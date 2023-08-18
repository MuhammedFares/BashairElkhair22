import 'package:bshair_elkher/main.dart';
import 'package:bshair_elkher/ui/Tools/RegID.dart';
import 'package:bshair_elkher/ui/Tools/RegMo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class ReqNot {
  String? mtoken = "";

  void requestpermession() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("user notification authed");
    }
    else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print("user notification provisional");
    }
    else {
      print("user declined ");
    }
  }
  void gettoken() async {
    await FirebaseMessaging.instance.getToken().then(
            (token) {
            mtoken = token;
            print("my token is $token");
             SaveToken(token!);
        }
    );





  }
  void SaveToken(String token) async{

      await FirebaseFirestore.instance.collection("UserTokens").
      doc(await GetUserId()).set(
          {
            'token': token,
          }
      );

  }

  Future<String> GetUserId() async {
    String Mo_id,Cst_id;

    Mo_id =  await RegMo().MOId;
    Cst_id = await RegID().CstId;

    if (Mo_id == "MO file is not exsit ") { return Cst_id;}
    else {
      return Mo_id;
    }

  }
}
