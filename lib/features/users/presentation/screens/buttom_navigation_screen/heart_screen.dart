import 'package:dating/utils/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../../styles/colors/custom_colors.dart';
import '../../provider/selection_provider.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../../widgets/custom_container_buttom_widget.dart';
import '../../widgets/custom_rich_text2_widget.dart';
import '../../widgets/my_text_widget.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({super.key});

  void _showWelcomeDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 14.w),
            decoration: BoxDecoration(
              color: CustomColors.black101Color,
              //borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border(
                top: BorderSide(color: Color(0xFF8622D1), width: 2),
                bottom: BorderSide(color: Color(0xFF0D3F89), width: 2),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyText(
                  text: "Welcome!!!",
                  fontWeight: FontWeight.w600,
                  fontSize: 28.sp,
                  color: CustomColors.whiteColor,
                ),
                SizedBox(height: 15.h),
                CustomRichText2Widget(
                  text1: "Welcome to",
                  text2: " Chat&Yamo! ",
                  text3: "  Let's Help You Find Your Perfect Match.",
                  onTapText2: () {},
                ),
                SizedBox(height: 20.h),
                CustomContinueButton(
                  text: "continue",
                  backgroundColor: CustomColors.primaryColor,
                  verticalPadding: 20,
                  onTap: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = context.read<SelectionProvider>();
      if (provider.showWelcome) {
        _showWelcomeDialog(context);
      }
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0b1030),
              CustomColors.black040Color,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 60.h,
            left: 12.w,
            right: 12.w,
            bottom: 30.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "hoemscreenlogo".pngImage,
                    height: 24.h,
                    width: 245.w,
                  ),
                  Row(
                    spacing: 20.w,
                    children: [
                      Container(
                        width: 30.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.sp),
                          color: Colors.transparent,
                          border: Border.all(color: CustomColors.whiteColor, width: 2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 13.h,
                              width: 13.w,
                              margin: EdgeInsets.all(2.sp),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: CustomColors.arrowColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      SvgPicture.asset("settingslidericon".svgIcon),
                    ],
                  ),
                ],
              ),
              // The rest of your screen content
            ],
          ),
        ),
      ),
    );
  }
}