import 'package:dating/routes/route_constants.dart';
import 'package:dating/routes/route_generator.dart';
import 'package:dating/styles/colors/custom_colors.dart';
import 'package:dating/styles/layouts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'features/users/presentation/provider/selection_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SelectionProvider()),


      ],
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: CustomColors.whiteColor,
            fontFamily: FontFamily.Geist,
            //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

          ),
          title: 'Date App',
          scrollBehavior: const ScrollBehavior().copyWith(
            overscroll: false,

          ),
          initialRoute: Routes.initial,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}


