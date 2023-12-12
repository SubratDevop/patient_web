import 'package:flutter/material.dart';

import '../app_text/app_text.dart';

void snackBar(
    {Color? bgColor, required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: BodyTittleText(tittle: message),
      backgroundColor: bgColor ?? Colors.grey,
    ),
    
  );
}
