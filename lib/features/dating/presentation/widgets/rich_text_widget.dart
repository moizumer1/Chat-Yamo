

import 'package:dating/features/dating/core/localization/app_localizations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styles/colors/custom_colors.dart';
import '../../core/styles/layouts/font.dart';

class RichTextWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onTapText1;
  final VoidCallback onTapText2;

  const RichTextWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTapText1,
    required this.onTapText2,
  });

  @override
  Widget build(BuildContext context) {
    final strings = context.loc;
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: CustomColors.whiteColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w300,
          fontFamily: FontFamily.Geist,
        ),
        children: [
          TextSpan(
            text: strings.bypressing,
          ),
          TextSpan(
            text: text1,
            style: TextStyle(
              color: CustomColors.whiteColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.Geist,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTapText1,
          ),
           TextSpan(
            text: strings.aswell,
          ),
          TextSpan(
            text: text2,
            style: TextStyle(
              color: CustomColors.whiteColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.Geist,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTapText2,
          ),
          const TextSpan(text: "."),
        ],
      ),
    );
  }
}
