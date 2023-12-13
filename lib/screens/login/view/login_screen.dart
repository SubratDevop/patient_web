import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:patient_web/constatnts/color/app_colors.dart';

import '../../../constatnts/dimensions/dimensions.dart';
import '../../../constatnts/screen_size/app_screen_size.dart';
import '../../../widgets/app_button/submit_button.dart';
import '../../../widgets/app_text/app_text.dart';
import '../../../widgets/app_textfield/app_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: ScreenSize.width(context) < 1300
              ? _buildMobileLayout(context)
              : _buildWebLayout(context),
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            "assets/images/app_logo.png",
            filterQuality: FilterQuality.high,
            height: ScreenSize.height(context) * 0.3,
            width: ScreenSize.height(context) * 0.3,
          ),
          Container(
            // height: ScreenSize.height(context) * 0.45,
            width: ScreenSize.width(context) * 0.22,
            alignment: Alignment.topLeft,
            padding:
                const EdgeInsets.only(top: 20, left: 60, right: 60, bottom: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFEDF5F4),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainTittleText(
                  tittle: "Admin Login",
                  textSize: 25,
                ),
                const SizedBox(
                  height: 25,
                ),
                const TxtFldTittleText(
                  tittle: "Username",
                ),
                const SizedBox(
                  height: 5,
                ),
                InputTextField(
                  hint: "healthcenter-01",
                  inputType: TextInputType.emailAddress,
                  onTextChanged: (_) {},
                  onValidator: (_) {
                    return null;
                  },
                  secureText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                const TxtFldTittleText(
                  tittle: "Passsword",
                ),
                const SizedBox(
                  height: 5,
                ),
                InputTextField(
                  hint: "xxxxxxxx",
                  inputType: TextInputType.emailAddress,
                  onTextChanged: (_) {},
                  onValidator: (_) {
                    return null;
                  },
                  secureText: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const BodyText(
                  tittle: "Forgot Password?",
                  tittleColor: Color(0xFF616161),
                  textsize: 12,
                ),
                const SizedBox(
                  height: 40,
                ),
                SubmitButton(
                    onTap: () {context.go("/home_screen");},
                    text: "Login",
                    textColor: AppColor.submitBtnTextWhite,
                    borderColor: AppColor.primaryBtnBorderColor),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/sayap.png",
            filterQuality: FilterQuality.high,
            height: ScreenSize.height(context) * 0.25,
            width: ScreenSize.width(context) ,
          ),
        ],
      ),
    );
  }

  Widget _buildWebLayout(BuildContext context) {
    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/app_logo.png",
                  filterQuality: FilterQuality.high,
                  height: ScreenSize.height(context) * 0.3,
                  width: ScreenSize.height(context) * 0.3,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: AppTiitleText(
                    tittle: 'HEALTHCARE\nSUPPORT',
                    textSize: 15,
                    alignnment: TextAlign.center,
                  ),
                ),
                Image.asset(
                  "assets/images/sayap.png",
                  filterQuality: FilterQuality.high,
                  height: ScreenSize.height(context) * 0.35,
                  width: ScreenSize.width(context) * 0.35,
                ),
              ],
            ),
            Container(
              // height: ScreenSize.height(context) * 0.54,
              width: ScreenSize.width(context) * 0.3,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(
                  top: 40, left: 60, right: 60, bottom: 40),
              decoration: BoxDecoration(
                color: AppColor.detailsContainerBgColor,
                // color:  Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MainTittleText(
                    tittle: "Admin Login",
                    textSize: 25,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const TxtFldTittleText(
                    tittle: "Username",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InputTextField(
                    hint: "healthcenter-01",
                    inputType: TextInputType.emailAddress,
                    onTextChanged: (_) {},
                    onValidator: (_) {
                      return null;
                    },
                    secureText: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TxtFldTittleText(
                    tittle: "Passsword",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InputTextField(
                    hint: "xxxxxxxx",
                    inputType: TextInputType.emailAddress,
                    onTextChanged: (_) {},
                    onValidator: (_) {
                      return null;
                    },
                    secureText: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const BodyText(
                    tittle: "Forgot Password?",
                    tittleColor: Color(0xFF616161),
                    textsize: 12,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SubmitButton(
                      onTap: () {
                        context.go("/home_screen");
                      },
                      text: "Login",
                      textColor: AppColor.submitBtnTextWhite,
                      borderColor: AppColor.primaryBtnBorderColor),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget buildTextField({required String label, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
