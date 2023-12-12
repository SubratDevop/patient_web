import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../app_text/app_text.dart';

appToast(
    {required BuildContext context,
    required String msg,
    required Color bgColor,
    required String toasttype}) {
  
 Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
}
