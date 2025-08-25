

import 'package:flutter/cupertino.dart';


import 'package:dating/features/users/presentation/widgets/my_text_widget.dart';
import 'package:dating/styles/styles.dart';
import 'package:dating/utils/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

import '../../../../routes/route_constants.dart';
import '../../../../styles/colors/custom_colors.dart';
import '../widgets/custom__number__field_widget.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/custom_container_buttom_widget.dart';
import '../widgets/custom_country_drop_down_widget.dart';
import '../widgets/custom_rich_text2_widget.dart';
import '../widgets/cutom_buttom_widget.dart';
import '../widgets/rich_text_widget.dart';

class VarificationCodeScreen extends StatelessWidget {
  const VarificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 53.w,
      height: 56.h,
      textStyle: const TextStyle(
        fontSize: 17,
        color: CustomColors.whiteColor,
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.Geist,
      ),
      decoration: BoxDecoration(
        color: CustomColors.black050Color,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: CustomColors.primarylightColor),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: CustomColors.primarylightColor),
    );

    final submittedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: CustomColors.primarylightColor),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              //CustomColors.primaryColor.withAlpha((255 * .40).toInt()),
              Color(0xFF0b1030),

              CustomColors.black040Color,
            ],
          ),
        ),
        child: Padding(
          // padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 12.w),
          padding: EdgeInsets.only(
            top: 60.h,
            left: 12.w,
            right: 12.w,
            bottom: 30.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: "Log In"),

              50.height,

              MyText(
                text: "Verify Code",
                fontWeight: FontWeight.w600,
                fontSize: 32.sp,
                color: CustomColors.whiteColor,
              ),
              10.height,

              MyText(
                text: "Please enter the verification code sent to your WhatsApp Number",
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: CustomColors.whiteColor.withAlpha((255 * .85).toInt()),
                overflow: TextOverflow.clip,
              ),

              30.height,

              Pinput(
                length: 6,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                onCompleted: (pin) {
                  print("Entered OTP: $pin");
                },
              ),
              15.height,

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      "Send the code again",
                      style: TextStyle(
                        color: CustomColors.arrowColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.Geist,
                        decoration: TextDecoration.underline,
                        decorationColor: CustomColors.arrowColor,
                        decorationThickness: 2,
                       ),

                    ),
                  ),
                ],
              ),







              Spacer(),

              CustomContinueButton(
                text: "Submit",
                backgroundColor: CustomColors.primaryColor,
                onTap: () {
                 Navigator.pushNamed(context, Routes.buttomnavigationScreen);
                },

              ),
              Center(
                child: CustomRichText2Widget(
                  text1: "Remembered Password? ",
                  text2: "Log In",
                  text3:"" ,
                  underlineText2: true,
                  text2Color: CustomColors.arrowColor,

                  onTapText2: () {

                  },
                ),
              ),








            ],
          ),
        ),
      ),
    );
  }
}
