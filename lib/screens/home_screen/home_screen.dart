import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constatnts/color/app_colors.dart';
import '../../constatnts/screen_size/app_screen_size.dart';
import '../../widgets/app_text/app_text.dart';
import 'component/hsotl_prfle.dart';
import 'component/mng_apmnts.dart';
import 'component/mng_dctrs.dart';
import 'component/new_apmnts.dart';
import 'component/upcoming_apmnts.dart';
import 'controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final homecontroller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: ScreenSize.width(context) < 1000
          ? _buildMobileLayout(context)
          : Obx(() => _buildWebLayout(context)),
    );
  }

//! Mobile Layout
  Widget _buildMobileLayout(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }

//! Web Layout
  Widget _buildWebLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: ScreenSize.width(context) * 0.26,
                    height: ScreenSize.height(context),
                    color: AppColor.detailsContainerBgColor,
                    // color: Colors.redAccent,
                  ),
                  Container(
                    width: ScreenSize.width(context) * 0.3,
                    //  height: ScreenSize.height(context),
                    // color: AppColor.primaryColor,
                    child: Column(
                      children: [
                        SizedBox(
                          height: ScreenSize.height(context) * 0.12,
                        ),
                        const MainTittleText(
                          tittle: "Hello Admin",
                          textSize: 30,
                        ),
                        SizedBox(
                          height: ScreenSize.height(context) * 0.12,
                        ),

                        //! Event List
                        GestureDetector(
                          onTap: () => homecontroller.evetTap(tag: 1),
                          child: eventCards(
                              eventIcon: "assets/icons/upcmng_apnts.png",
                              eventTittle: "Upcoming Appointments",
                              cardBGColor:
                                  homecontroller.selectedEvnetTag.value == 1
                                      ? AppColor.primaryColor
                                      : AppColor.backgroundColor,
                              tittleColor:
                                  homecontroller.selectedEvnetTag.value == 1
                                      ? Colors.white
                                      : AppColor.mainTitleTextColor,
                              iconColor:
                                  homecontroller.selectedEvnetTag.value == 1
                                      ? Colors.white
                                      : Colors.black,
                              cardBorderColr:
                                  homecontroller.selectedEvnetTag.value == 1
                                      ? Colors.transparent
                                      : AppColor.mainTitleTextColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () => homecontroller.evetTap(tag: 2),
                          child: eventCards(
                              eventIcon: "assets/icons/new_apnts.png",
                              eventTittle: "New Appointment",
                              cardBGColor:
                                  homecontroller.selectedEvnetTag.value == 2
                                      ? AppColor.primaryColor
                                      : AppColor.backgroundColor,
                              tittleColor:
                                  homecontroller.selectedEvnetTag.value == 2
                                      ? Colors.white
                                      : AppColor.mainTitleTextColor,
                              iconColor:
                                  homecontroller.selectedEvnetTag.value == 2
                                      ? Colors.white
                                      : Colors.black,
                              cardBorderColr:
                                  homecontroller.selectedEvnetTag.value == 2
                                      ? Colors.transparent
                                      : AppColor.mainTitleTextColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () => homecontroller.evetTap(tag: 3),
                          child: eventCards(
                              eventIcon: "assets/icons/mng_apnts.png",
                              eventTittle: "Manage Appointments",
                              cardBGColor:
                                  homecontroller.selectedEvnetTag.value == 3
                                      ? AppColor.primaryColor
                                      : AppColor.backgroundColor,
                              tittleColor:
                                  homecontroller.selectedEvnetTag.value == 3
                                      ? Colors.white
                                      : AppColor.mainTitleTextColor,
                              iconColor:
                                  homecontroller.selectedEvnetTag.value == 3
                                      ? Colors.white
                                      : Colors.black,
                              cardBorderColr:
                                  homecontroller.selectedEvnetTag.value == 3
                                      ? Colors.transparent
                                      : AppColor.mainTitleTextColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () => homecontroller.evetTap(tag: 4),
                          child: eventCards(
                              eventIcon: "assets/icons/mng_doctrs.png",
                              eventTittle: "Manage Doctors",
                              cardBGColor:
                                  homecontroller.selectedEvnetTag.value == 4
                                      ? AppColor.primaryColor
                                      : AppColor.backgroundColor,
                              tittleColor:
                                  homecontroller.selectedEvnetTag.value == 4
                                      ? Colors.white
                                      : AppColor.mainTitleTextColor,
                              iconColor:
                                  homecontroller.selectedEvnetTag.value == 4
                                      ? Colors.white
                                      : Colors.black,
                              cardBorderColr:
                                  homecontroller.selectedEvnetTag.value == 4
                                      ? Colors.transparent
                                      : AppColor.mainTitleTextColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () => homecontroller.evetTap(tag: 5),
                          child: eventCards(
                              eventIcon: "assets/icons/hsptl_prfl.png",
                              eventTittle: "Hospital Profile",
                              cardBGColor:
                                  homecontroller.selectedEvnetTag.value == 5
                                      ? AppColor.primaryColor
                                      : AppColor.backgroundColor,
                              tittleColor:
                                  homecontroller.selectedEvnetTag.value == 5
                                      ? Colors.white
                                      : AppColor.mainTitleTextColor,
                              iconColor:
                                  homecontroller.selectedEvnetTag.value == 5
                                      ? Colors.white
                                      : Colors.black,
                              cardBorderColr:
                                  homecontroller.selectedEvnetTag.value == 5
                                      ? Colors.transparent
                                      : AppColor.mainTitleTextColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  // padding: const EdgeInsets.only(left: 100.0,right: 200.0),
                  padding: EdgeInsets.only(
                      left: ScreenSize.width(context) * 0.075,
                      right: ScreenSize.width(context) * 0.05),
                  child: secondHalfScreen(
                      homecontroller.selectedEvnetTag.value, context),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

//! 2nd half of screen

  secondHalfScreen(int tag, BuildContext context) {
    switch (tag) {
      case 1:
        return upcmngApmnts(context);
      case 2:
        return newApmnts(context);
      case 3:
        return mngApmnts(context);
      case 4:
        return mngDctrs(context);
      case 5:
        return hsptsPrfle(context);
      default:
        const SizedBox.shrink();
    }
  }

//! Event Card Widget

  Container eventCards(
      {required String eventIcon,
      required String eventTittle,
      Color? cardBorderColr,
      Color? cardBGColor,
      Color? iconColor,
      Color? tittleColor}) {
    return Container(
      // height: ScreenSize.height(context) * 0.08, // 70
      height: 60,
      padding: const EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
        color: cardBGColor, // AppColor.primaryColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        boxShadow: const [
          BoxShadow(blurRadius: 4, offset: Offset(0, 4), color: Colors.grey),
          // ],
        ],
        border: Border.all(color: cardBorderColr ?? Colors.transparent),
      ),
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                eventIcon,
                height: 24,
                width: 24,
                color: iconColor ?? const Color(0xFF1E232C),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            flex: 8,
            child: Align(
              alignment: Alignment.centerLeft,
              child: MainTittleText(
                tittle: eventTittle,
                textSize: 17,
                tittleColor: tittleColor ?? Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
