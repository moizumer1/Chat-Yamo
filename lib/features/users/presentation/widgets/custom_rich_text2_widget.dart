import 'package:dating/styles/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRichText2Widget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final VoidCallback onTapText2;

  /// Optional customization for text2
  final Color text2Color;
  final bool underlineText2;

  const CustomRichText2Widget({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.onTapText2,
    this.text2Color = CustomColors.whiteColor, // default white
    this.underlineText2 = false, // default underline off
  });

  @override
  Widget build(BuildContext context) {
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
            text: text1,
          ),
          TextSpan(
            text: text2,
            style: TextStyle(
              color: text2Color,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.Geist,
              decoration: underlineText2 ? TextDecoration.underline : TextDecoration.none,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTapText2,
          ),
          TextSpan(
            text: text3,
          ),
        ],
      ),
    );
  }
}
