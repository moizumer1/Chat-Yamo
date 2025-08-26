import 'package:dating/features/dating/core/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../config/router/route_constants.dart';
import '../../core/constants/image_constants.dart';
import '../../core/styles/colors/custom_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Routes.welcomescreen);
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0b1030),
              CustomColors.black040Color,
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            AppImages.logoimage,
            width: 206.w,
            height: 99.h,
          ),
        ),
      ),
    );
  }
}