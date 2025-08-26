import 'package:dating/features/dating/core/localization/app_localizations.dart';
import 'package:dating/features/dating/core/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/router/route_constants.dart';
import '../../core/constants/image_constants.dart';
import '../../core/styles/colors/custom_colors.dart';
import '../widgets/cutom_buttom_widget.dart';
import '../widgets/rich_text_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.loc;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.welcomeimage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
         // padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 12.w),
          padding: EdgeInsets.only(top: 80.h, left: 12.w,right: 12.w,bottom: 30.h),
          child: Column(
            children: [

              Image.asset(
                AppImages.logoimage,
                width: 206.w,
                height: 99.h,
              ),
              20.height,

              RichTextWidget(
                text1: strings.termsOfUse,
                text2: strings.privacyPolicy,
                onTapText1: () {

                },
                onTapText2: () {

                },
              ),

              Spacer(),



              CutomButtomWidget(
                svgPath: AppIcon.phonenumbericon,
                text: strings.connectWithPhone,
                onTap: () {
                    Navigator.pushNamed(context, Routes.loginScreen);
                },
              ),
              CutomButtomWidget(
                svgPath: AppIcon.facebookicon,
                text: strings.loginWithFacebook,
                onTap: () {

                },
                backgroundColor: CustomColors.blackColor,
                borderColor: CustomColors.primaryColor,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
