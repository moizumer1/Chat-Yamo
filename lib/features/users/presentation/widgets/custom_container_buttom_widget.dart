

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../styles/colors/custom_colors.dart';
import 'my_text_widget.dart';

class CustomContinueButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final double verticalPadding;
  const CustomContinueButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor = CustomColors.gray8080Color,
    this.verticalPadding = 30,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 25.h),
        padding: EdgeInsets.symmetric(vertical: verticalPadding.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36.69.sp),
          color: backgroundColor,
        ),
        child: Center(
          child: MyText(
            text: text,
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
            color: CustomColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
