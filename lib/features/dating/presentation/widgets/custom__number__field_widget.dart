

import 'package:dating/features/dating/core/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styles/colors/custom_colors.dart';
import '../../core/styles/layouts/font.dart';



class CustomNumberField extends StatelessWidget {
  final TextEditingController controller;

  const CustomNumberField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final strings = context.loc;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: CustomColors.black050Color,
        border: Border.all(
          color: CustomColors.primarylightColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: CustomColors.whiteColor,
          fontSize: 16.sp,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: strings.whatsappNumber,
          hintStyle: TextStyle(
            color: CustomColors.whiteColor.withAlpha((255 * .75).toInt()),
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            fontFamily: FontFamily.Geist,
          ),
        ),
      ),
    );
  }
}
