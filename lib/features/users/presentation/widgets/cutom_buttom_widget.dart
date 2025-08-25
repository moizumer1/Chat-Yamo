

import 'package:dating/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../styles/colors/custom_colors.dart';
import 'my_text_widget.dart';

class CutomButtomWidget extends StatelessWidget {
  final String svgPath;
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color borderColor;

  const CutomButtomWidget({
    super.key,
    required this.svgPath,
    required this.text,
    required this.onTap,
    this.backgroundColor = CustomColors.primaryColor,
    this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(1.sp),
        margin: EdgeInsets.only(bottom: 35.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.r),
          color: backgroundColor,
          border: Border.all(color: borderColor, width: 1),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: CustomColors.whiteColor,
              ),
              child: Center(
                child: SvgPicture.asset(svgPath),
              ),
            ),
           // 30.width,
            Expanded(
              child: Center(
                child: MyText(
                  text: text,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: CustomColors.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
