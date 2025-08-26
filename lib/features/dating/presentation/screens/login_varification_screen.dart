import 'package:dating/features/dating/core/localization/app_localizations.dart';
import 'package:dating/features/dating/core/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


import '../../config/router/route_constants.dart';
import '../../core/styles/colors/custom_colors.dart';
import '../provider/selection_provider.dart';
import '../widgets/custom__number__field_widget.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/custom_container_buttom_widget.dart';
import '../widgets/custom_drop_coundtry_code_widget.dart';
import '../widgets/custom_rich_text2_widget.dart';
import '../widgets/my_text_widget.dart';

class LoginVarificationScreen extends StatelessWidget {
  LoginVarificationScreen({super.key});
  final TextEditingController whatsappnumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SelectionProvider>(context);
    final strings = context.loc;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("backgroundimage".pngImage),
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
                CustomAppBar(title: strings.logIn),
                50.height,
                MyText(
                  text: strings.welcome,
                  fontWeight: FontWeight.w600,
                  fontSize: 32.sp,
                  color: CustomColors.whiteColor,
                ),
                10.height,
                MyText(
                  text: strings.enterWhatsapp,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: CustomColors.whiteColor.withAlpha((255 * .85).toInt()),
                ),
                30.height,
                MyText(
                  text: strings.country,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: CustomColors.whiteColor,
                ),
                10.height,
                CustomDropCoundtryCodeWidget(),
                30.height,
                MyText(
                  text: strings.whatsappNumber,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: CustomColors.whiteColor,
                ),
                10.height,
                CustomNumberField(controller: whatsappnumberController),
                30.height,
                CustomRichText2Widget(
                  text1: strings.pressContinue,
                  text2: strings.continueText,
                  text3:strings.receiveCode,
                  onTapText2: () {},
                ),
                Spacer(),
                CustomContinueButton(
                  text: strings.receivewhatsappmessage,
                  backgroundColor: CustomColors.primaryColor,
                  onTap: () {
                    Navigator.pushNamed(context, Routes.varificationcodeScreen);
                  },
                ),
                CustomContinueButton(
                  text: strings.receivesms,
                  backgroundColor: CustomColors.primaryColor,
                  onTap: () {
                    //Navigator.pushNamed(context, Routes.loginvarificationScreen);
                  },
                ),
                CustomRichText2Widget(
                  text1: strings.alreadyAccount,
                  text2: strings.here,
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