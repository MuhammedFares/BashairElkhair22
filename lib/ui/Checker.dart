import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool> hasNetwork() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    return false;
  }
}

showAlertDialog(BuildContext context) {

  // set up the AlertDialog
  AlertDialog alert = const AlertDialog(
    title: Text("انت غير متصل "),
    content: Text("يرجي الاتصال بالانترنت اولاً "),
    actions: [
    //  okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
showAlertDialog2(BuildContext context) {

  // set up the AlertDialog
  AlertDialog alert = const AlertDialog(
    title: Text(" جهازك غير مدعوم "),
    content:
    Text("يرجي استخدام طرق التسجيل الاخري  "),
    actions: [
      //  okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}