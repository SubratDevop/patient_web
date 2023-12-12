// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import '../../../constatnts/color/app_colors.dart';
// import '../../../constatnts/dimensions/app_dimensions.dart';
// import '../../../constatnts/screen_size/app_screen_size.dart';
// import '../../../widgets/app_button/back_button.dart';
// import '../../../widgets/app_button/submit_button.dart';
// import '../../../widgets/app_snackBar/app_snackbar.dart';
// import '../../../widgets/app_text/app_text.dart';

// class LoginScreen extends StatelessWidget {
//   LoginScreen({super.key});

    
//   @override
//   Widget build(BuildContext context) {

//     return GestureDetector(
//       onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
//       child: Obx(
//         () => Scaffold(
//           backgroundColor: AppColor.screenBgColor,
   
//           body: Form(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: AppDimension().screenContaintPadding),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                     AppBackButton(
//                       onTap: () {
//                         Get.back();
//                       },
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Column(
//                         children: [
//                           Image.asset(
//                             "assets/images/sayap.png",
//                             filterQuality: FilterQuality.high,
//                             height: ScreenSize.height(context) * 0.25,
//                             width: ScreenSize.height(context) * 0.25,
//                           ),
//                           const AppTiitleText(
//                             tittle: "GUISS DOCTOR",
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: ScreenSize.height(context) *
//                           (ScreenSize.height(context) < 700 ? 0.05 : 0.1),
//                       // height: ScreenSize.height(context) * 0.1,
//                     ),
//                     const TxtFldTittleText(
//                       tittle: "Enter Mobile Number",
//                     ),
//                     const SizedBox(
//                       height: 25,
//                     ),
//                     //! Mobile Number filed
//                     IntlPhoneField(
//                         invalidNumberMessage: 'Invalid Number',
//                         keyboardType: TextInputType.number,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           fillColor: AppColor.textFiledBgColor,
//                           // labelText: 'Phone Number',
//                           contentPadding: const EdgeInsets.all(5),
//                           filled: true,
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(05),
//                               borderSide: Divider.createBorderSide(context)),
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(05),
//                               borderSide: Divider.createBorderSide(context)),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(05),
//                               borderSide: Divider.createBorderSide(context)),
//                         ),
//                         onChanged: (phone) {
//                           //  print(number);
//                         },
//                         // controller: controller.numberController,
//                         initialCountryCode: 'IN'),

//                     // InputTextField(
//                     //   hint: "+221-XXX-XXXX-XXX",
//                     //   inputType: TextInputType.emailAddress,
//                     //   onTextChanged: (_) {},
//                     //   onValidator: (_) {
//                     //     return null;
//                     //   },
//                     //   secureText: false,
//                     // ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     RichText(
//                       text: TextSpan(
//                         children: [
//                           WidgetSpan(
//                             child: GestureDetector(
//                               onTap: () {
//                                 // print('Link tapped!');
//                               },
//                               child: const LinkText(
//                                   tittle: "I have trouble signing in"),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
