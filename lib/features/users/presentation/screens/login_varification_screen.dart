import 'package:dating/features/users/presentation/widgets/my_text_widget.dart';
import 'package:dating/styles/styles.dart';
import 'package:dating/utils/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../routes/route_constants.dart';
import '../../../../styles/colors/custom_colors.dart';
import '../provider/selection_provider.dart';
import '../widgets/custom__number__field_widget.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/custom_container_buttom_widget.dart';
import '../widgets/custom_country_drop_down_widget.dart';
import '../widgets/custom_drop_coundtry_code_widget.dart';
import '../widgets/custom_rich_text2_widget.dart';
import '../widgets/cutom_buttom_widget.dart';
import '../widgets/rich_text_widget.dart';

class LoginVarificationScreen extends StatelessWidget {
  LoginVarificationScreen({super.key});
  final TextEditingController whatsappnumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SelectionProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("backgroundimage".pngImage), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Gradient overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0a0e2a),
                  CustomColors.black040Color,
                ],
              ),
            ),
          ),
          // Content
          Padding(
            padding: EdgeInsets.only(
              top: 60.h,
              left: 12.w,
              right: 12.w,
              bottom: 30.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(title: "Log In"),
                50.height,
                MyText(
                  text: "Welcome",
                  fontWeight: FontWeight.w600,
                  fontSize: 32.sp,
                  color: CustomColors.whiteColor,
                ),
                10.height,
                MyText(
                  text: "Please enter your WhatsApp Number",
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: CustomColors.whiteColor.withAlpha((255 * .85).toInt()),
                ),
                30.height,
                MyText(
                  text: "Country",
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: CustomColors.whiteColor,
                ),
                10.height,
                CustomDropCoundtryCodeWidget(),
                30.height,
                MyText(
                  text: "WhatsApp Number",
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: CustomColors.whiteColor,
                ),
                10.height,
                CustomNumberField(controller: whatsappnumberController),
                30.height,
                CustomRichText2Widget(
                  text1: "Press ",
                  text2: "'Continue' ",
                  text3:"to receive a code from Chat&Yamo to verify your phone number.",
                  onTapText2: () {},
                ),
                Spacer(),
                CustomContinueButton(
                  text: "Receive An WhatsApp Message",
                  backgroundColor: CustomColors.primaryColor,
                  onTap: () {
                    Navigator.pushNamed(context, Routes.varificationcodeScreen);
                  },
                ),
                CustomContinueButton(
                  text: "Receive An SMS",
                  backgroundColor: CustomColors.primaryColor,
                  onTap: () {
                    //Navigator.pushNamed(context, Routes.loginvarificationScreen);
                  },
                ),
                CustomRichText2Widget(
                  text1: "Already have an account created with an Email Address? Then Connect ",
                  text2: "Here ",
                  text3:"",
                  onTapText2: () {},
                  text2Color: CustomColors.arrowColor,
                  underlineText2: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}