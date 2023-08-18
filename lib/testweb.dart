import 'package:bshair_elkher/ui/Database/DB.dart';
import 'package:bshair_elkher/ui/Database/Dream.dart';
import 'package:bshair_elkher/ui/ModernUi/Snack.dart';
import 'package:bshair_elkher/ui/Notifications/onesignal_flutter.dart';
import 'package:bshair_elkher/ui/instructions/instructions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


  late WebViewController conto;

  Future<void> start (BuildContext con , dream d , String player,String title, String ss ) async {

    String asset = Castasset(d.dreamtype);
    conto = WebViewController()
      ..loadFlutterAsset('Assets/image/$asset');
    conto
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        'SnackBar',
        onMessageReceived: (message) async {
        if(message.message == "Done") {

          if(await adduserDream(d)) {
          Navigator.push(con, MaterialPageRoute(builder: (context)=>const Instructions()));
          showSnackBar(con, "تم اضافة حلمك بنجاح");

          await SendNotification(player, title, ss);
          }

          if (kDebugMode) {print("Transaction Done ");}
        }
        else if(message.message == "Error") {
          Navigator.pop(con);
          showSnackBar(con, "عملية دفع فاشلة ");
        }
        else  if(message.message == "Cancelled") {
        Navigator.pop(con);
          showSnackBar(con, "تم الغاء عملية الدفع ");
        /*  if(await adduserDream(d)) {
            Navigator.push(con, MaterialPageRoute(builder: (context)=>const Instructions()));
            showSnackBar(con, "تم اضافة حلمك بنجاح");

            //await SendNotification(player, title, ss);
          }*/
        }
        else {
          Navigator.pop(con);
          showSnackBar(con, "تم الغاء عملية الدفع , بطاقة غير صالحة ");
        }
        },
      );
    // .con..to here.

  }

String Castasset(String dreamtype) {
  if(dreamtype == "dreamtype.normal") {  return "normal.html" ;}
  else if (dreamtype == "dreamtype.bronze"){ return "bronze.html" ;}
  else if (dreamtype == "dreamtype.golden"){ return "golden.html" ;}
  else if (dreamtype == "dreamtype.instant"){ return "instant.html" ;}
  else {if (kDebugMode) {print(dreamtype);}
  return "تفسير الرؤية" ; }
}
Widget widi() => WebViewWidget(controller: conto);