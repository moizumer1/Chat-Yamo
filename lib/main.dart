
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'features/dating/config/router/route_constants.dart';
import 'features/dating/config/router/route_generator.dart';
import 'features/dating/core/localization/app_localizations.dart';
import 'features/dating/core/localization/localization_provider.dart';
import 'features/dating/core/styles/colors/custom_colors.dart';
import 'features/dating/core/styles/layouts/font.dart';
import 'features/dating/presentation/provider/selection_provider.dart';

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
        ChangeNotifierProvider(create: (_) => LocalizationProvider()),

      ],
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        child: Consumer<LocalizationProvider>(
          builder: (context, provider, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: CustomColors.whiteColor,
                fontFamily: FontFamily.Geist,
                //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

              ),
              title: 'Date App',
              locale: provider.locale,

              localizationsDelegates: [
                AppLocalizations.delegate,

              ],
              supportedLocales: [
                Locale('en', ''),
                Locale('es', ''),
              ],
              scrollBehavior: const ScrollBehavior().copyWith(
                overscroll: false,

              ),
              initialRoute: Routes.initial,
              onGenerateRoute: RouteGenerator.generateRoute,
            );
          }
        ),
      ),
    );
  }
}


