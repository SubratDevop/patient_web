import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constatnts/color/app_colors.dart';
import '../../../constatnts/screen_size/app_screen_size.dart';
import '../../../widgets/app_button/submit_button.dart';
import '../../../widgets/app_text/app_text.dart';

Widget mngDctrs(BuildContext context) {
  List scheduleDay = [
    "Monday",
    "Wednesday",
    "Thursday",
    "Friday",
  ];
  List scheduleTime = [
    "09 h 00 - 15 h 00",
    "14 h 00  - 20 h 00",
    "08 h 00 -   11 h 00",
    "14 h 00 - 20 h 00",
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: ScreenSize.height(context) * 0.13,
      ),
      const MainTittleText(
        tittle: "Doctor Profile",
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
        height: 25,
      ),
      Row(
        children: [
          const MainTittleText(tittle: "Dr. John Doe"),
          const SizedBox(
            width: 100,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF79747E), width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/edit_icon.svg",
                  height: 26,
                  width: 26,
                ),
                const SizedBox(
                  width: 10,
                ),
                TimeSlotText(
                  tittle: "Edit name",
                  fontweight: FontWeight.w500,
                  textsize: 17,
                  tittleColor: AppColor.editNameColor,
                ),
              ],
            ),
          )
        ],
      ),
      const SizedBox(
        height: 02,
      ),
      const HintTittleText(
        tittle: "General Practitioner",
        textSize: 24,
        tittleColor: Color(0xFF1E232C),
      ),
      const SizedBox(
        height: 20,
      ),
      const Divider(
        thickness: 1,
        color: AppColor.dividerColor,
      ),
      const SizedBox(
        height: 15,
      ),
      const MainTittleText(tittle: "Schedule"),
      const SizedBox(
        height: 30,
      ),

//? Schedue Card
      ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          color: Colors.transparent,
          height: 20,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return scheduleCard(
              day: scheduleDay[index], time: scheduleTime[index]);
        },
      ),
      const SizedBox(
        height: 80,
      ),

//? Submitt Buttons

      Row(
        children: [
          Expanded(
            flex: 3,
            child: SubmitButton(
                onTap: () {},
                text: "Back to doctors list",
                textColor: AppColor.submitBtnTextWhite,
                borderColor: AppColor.primaryBtnBorderColor),
          ),
          const SizedBox(width: 30,),
          Expanded(
            flex: 3,
            child: SubmitButton(
                onTap: () {},
                isShadowEnable: false,
                text: "Remove doctor profile",
                backgroundColor: AppColor.screenBgColor,
                textColor: Colors.black,
                borderColor:const  Color(0xFF79747E)),
          ),
        ],
      ),

      const SizedBox(
        height: 80,
      ),
    ],
  );
}

Widget scheduleCard({required String day, required String time}) {
  return Row(
    children: [
      Expanded(
        flex: 2,
        child: BodySubTittleText(
          tittle: day,
          tittleColor: Colors.black,
          textSize: 23,
        ),
      ),
      const SizedBox(
        width: 50,
      ),
      Expanded(
        flex: 7,
        child: BodySubTittleText(
          tittle: time,
          tittleColor: Colors.black,
          textSize: 23,
        ),
      ),
    ],
  );
}
