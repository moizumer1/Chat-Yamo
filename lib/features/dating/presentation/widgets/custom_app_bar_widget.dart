
import 'package:dating/features/dating/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styles/colors/custom_colors.dart';
import 'my_text_widget.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBack;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onBack ?? () => Navigator.pop(context),
          child: SvgPicture.asset("arrowbackicon".svgIcon),
        ),
        const Spacer(),
        MyText(
          text: title,
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          color: CustomColors.whiteColor,
        ),
        const Spacer(),
      ],
    );
  }
}
