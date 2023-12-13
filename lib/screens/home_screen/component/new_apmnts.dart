  import 'package:flutter/material.dart';

import '../../../constatnts/screen_size/app_screen_size.dart';
import '../../../widgets/app_text/app_text.dart';

Widget newApmnts(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: ScreenSize.height(context) * 0.15,
        ),
        const MainTittleText(
          tittle: "New Appointment",
          textSize: 30,
        ),
      ],
    );
  }