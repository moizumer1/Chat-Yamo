

import 'package:flutter/cupertino.dart';

import '../../../../styles/colors/custom_colors.dart';
import '../../../../styles/layouts/font.dart';



class MyText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final int? maxLines;
  final String? fontfamily;
  final TextDecoration? textDecoration;
  final Color? decorationColor;
  final double? decorationThickness;
  final TextOverflow? overflow;
  final bool? softwrap;
  final FontStyle fontStyle;
  const MyText({
    super.key,
    this.softwrap,
    this.overflow,
    this.fontfamily,
    required this.text,
    this.color = CustomColors.blackColor,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.left,
    this.maxLines,
    this.textDecoration,
    this.decorationColor,
    this.decorationThickness,
    this.fontStyle = FontStyle.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: softwrap,
      style: TextStyle(
        overflow: overflow ?? TextOverflow.ellipsis,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontfamily ?? FontFamily.Geist,
        decoration: textDecoration,
        decorationColor: decorationColor ?? color,
        decorationThickness: decorationThickness ?? 1.5,
        fontStyle: fontStyle,
      ),
      textHeightBehavior: TextHeightBehavior(
        applyHeightToFirstAscent: false,
        applyHeightToLastDescent: false,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
