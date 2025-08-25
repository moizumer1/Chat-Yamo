import 'package:dating/features/users/presentation/widgets/my_text_widget.dart';
import 'package:dating/styles/colors/custom_colors.dart';
import 'package:dating/utils/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../routes/route_constants.dart';
import '../widgets/cutom_buttom_widget.dart';
import '../widgets/rich_text_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("welcomeimage".pngImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
         // padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 12.w),
          padding: EdgeInsets.only(top: 80.h, left: 12.w,right: 12.w,bottom: 30.h),
          child: Column(
            children: [

              Image.asset(
                'logo'.pngImage,
                width: 206.w,
                height: 99.h,
              ),
              20.height,

              RichTextWidget(
                text1: "Terms of Use",
                text2: "Privacy Policy",
                onTapText1: () {

                },
                onTapText2: () {

                },
              ),

              Spacer(),



              CutomButtomWidget(
                svgPath: "phonenumbericon".svgIcon,
                text: "Connect With a Phone Number",
                onTap: () {
                    Navigator.pushNamed(context, Routes.loginScreen);
                },
              ),
              CutomButtomWidget(
                svgPath: "facebookicon".svgIcon,
                text: "Login With Facebook",
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
