import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patient_web/constatnts/color/app_colors.dart';

import '../../../constatnts/screen_size/app_screen_size.dart';
import '../../../widgets/app_text/app_text.dart';

Widget upcmngApmnts(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: ScreenSize.height(context) * 0.13,
      ),
      const MainTittleText(
        tittle: "Upcoming Appointments",
        textSize: 30,
      ),
      const SizedBox(
        height: 05,
      ),
      const Divider(
        thickness: 1,
        color: AppColor.dividerColor,
      ),
      const SizedBox(
        height: 40,
      ),
      apmntDetailsWidget(
          time: "8:00 AM",
          detilas: "General Physician: Dr. John Doe",
          patientName: "Patient-name-01"),
      const SizedBox(
        height: 20,
      ),
      apmntDetailsWidget(
          time: "8:00 AM",
          detilas: "Radiology - Bladder: Dr. Prashant",
          patientName: "Patient-name-02"),
      const SizedBox(
        height: 20,
      ),
      apmntDetailsWidget(
          time: "8:30 AM",
          detilas: "General Physician: Dr. Hireki",
          patientName: "Patient-name-03"),
    ],
  );
}

apmntDetailsWidget(
    {required String time,
    required String detilas,
    required String patientName}) {
  return
   Container(
    height: 100,
    decoration: BoxDecoration(
        color: AppColor.detailsContainerBgColor,
        borderRadius: BorderRadius.circular(25)),
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MainTittleText(
                tittle: time,
                textSize: 22,
                tittleColor: AppColor.mainTitleTextColor,
              ),
              MainTittleText(
                tittle: patientName,
                textSize: 22,
                textWeight: FontWeight.normal,
                tittleColor: AppColor.mainTitleTextColor,
              ),
            ],
          ),
          SizedBox(
            height: 05,
          ),
          MainTittleText(
            tittle: detilas,
            textSize: 16,
            tittleColor: AppColor.mainTitleTextColor,
          ),
        ],
      ),
    ),
  );

}
