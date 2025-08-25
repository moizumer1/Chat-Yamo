

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../styles/colors/custom_colors.dart';
import '../provider/selection_provider.dart';
import '../widgets/my_text_widget.dart';

class CustomCountryDropdownWidget extends StatelessWidget {
  const CustomCountryDropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SelectionProvider>(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: CustomColors.black050Color,
        border: Border.all(color: CustomColors.primarylightColor, width: 1),
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: CustomColors.black050Color,
          isExpanded: true,
          value: provider.selectedCountry,
          hint: MyText(
            text: "Select",
            fontWeight: FontWeight.w500,
            fontSize: 17.sp,
            color: CustomColors.whiteColor,
          ),
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: CustomColors.arrowColor,
            size: 30.sp,
          ),
          items: provider.countries.map((String country) {
            return DropdownMenuItem<String>(
              value: country,
              child: MyText(
                text: country,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: CustomColors.whiteColor,
              ),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) {
              provider.selectCountry(value);
            }
          },
        ),
      ),
    );
  }
}
