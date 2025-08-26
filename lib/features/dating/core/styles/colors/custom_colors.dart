import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColors {
  static const primaryColor = Color(0xFF6B37F4);
  static const primarylightColor = Color(0xFF585892);
  static const blackColor = Color(0xFF000000);
  static const black050Color = Color(0xFF050712);
  static const black040Color = Color(0xFF04050A);
  static const black101Color = Color(0xFF101222);
  static const whiteColor = Color(0xFFFFFFFF);
  static const arrowColor = Color(0xFFF09240);
  static const gray8080Color = Color(0xFF808080);
  static const redColor = Color(0xFFDF1025);
  static const navigationColor = Color(0xFF556094);








  static Map<int, Color> successSwatch = {
    0: const Color(0xFFF5FAF5),
    5: const Color(0xFFEDF6EE),
    10: const Color(0xFFDCEDDD),
    20: const Color(0xFFCBE5CC),
    30: const Color(0xFFA9D3AB),
    40: const Color(0xFF87C289),
    50: const Color(0xFF65B168),
    60: const Color(0xFF43A047),
    70: const Color(0xFF37833B),
    80: const Color(0xFF2B662E),
    90: const Color(0xFF1F4921),
    100: const Color(0xFF132C14),
  };

  static Map<int, Color> attentionSwatch = {
    0: const Color(0xFFFFF8EB),
    5: const Color(0xFFFFEFD1),
    10: const Color(0xFFFFE5B3),
    20: const Color(0xFFFFD98F),
    30: const Color(0xFFF5CE84),
    40: const Color(0xFFEBBF67),
    50: const Color(0xFFE5AE40),
    60: const Color(0xFFD6981B),
    70: const Color(0xFFB88217),
    80: const Color(0xFF8F6512),
    90: const Color(0xFF66480D),
    100: const Color(0xFF463209),
  };

  static Map<int, Color> warningSwatch = {
    0: const Color(0xFFFEF2F1),
    5: const Color(0xFFFEE8E7),
    10: const Color(0xFFFDDCDA),
    20: const Color(0xFFFCCBC8),
    30: const Color(0xFFFAA9A3),
    40: const Color(0xFFF8877F),
    50: const Color(0xFFF6655A),
    60: const Color(0xFFF44336),
    70: const Color(0xFFC8372D),
    80: const Color(0xFF9C2B23),
    90: const Color(0xFF6F1F19),
    100: const Color(0xFF43130F),
  };


  static const CustomgreenColor = Color(0xFF328404);

  static final enableBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.sp),
    borderSide: const BorderSide(color: Colors.transparent),
  );

  static final kFocuseBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.sp),
    borderSide: const BorderSide(color: CustomColors.primaryColor),
  );

  static final kErrorOutlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.sp),
    borderSide: BorderSide(color: CustomColors.primaryColor),
  );
}
