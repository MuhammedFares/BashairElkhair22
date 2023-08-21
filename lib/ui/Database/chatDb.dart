
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'chatmessage.dart';

class chatdb{

  final db=FirebaseFirestore.instance;

  Future<void> Addchat(String chatid) async {
    var m = chatid;
    final data = <String, dynamic>{
      "body": "بداية الدردشة",
      "date": formattedDate(),
      "Sender":chatid,
    };
    await db.doc("users/$m").collection("messages").add(data);
  }
  void Init(List<chatmessage> messages,String m, var notifyParent ) {
    db.doc("users/$m").collection("messages")
        .snapshots(includeMetadataChanges: false)
        .listen((event) {
          event.docs.forEach((element) {
          /*  chatmessage mm = chatmessage(
                element["body"],
                element["Sender"],
                element["date"]);
            if(messages.contains(mm)){

            }
            else {
              messages.add(mm);
              notifyParent(mm);
            }*/
          });
   });
  }

  void Init_i(String m){

    }
  Future<void> AddMessage(String chatid,chatmessage m) async {

    final data = <String, dynamic>{

      "body": m.body,
      "date": await formattedDate(),
      "Sender":m.sender,
    };
    await db.doc("users/$chatid").collection("messages").add(data);
  }
  Future<List<chatmessage>> getallMessages(String chatid)async{

    List<chatmessage> u= [];
    await db.collection("users/$chatid/messages").get().then((event) {
      try {

        for (var element in event.docs) {
          //u.add(createMessage(element));
          chatmessage m = chatmessage(element["body"], element["Sender"], element["date"]);
          u.add(m);

        }
      } on Exception catch (e) {
        print("error");
      }
    });

    u.sort((a,b) { var adate = a.date; var bdate = b.date;
      return -bdate.compareTo(adate);});

   return u;
  }

  Future<void> endchat(String chatid) async {
    var m = chatid;
    final data = <String, dynamic>{
      "body": "نهاية الدردشة",
      "date": formattedDate(),
      "Sender":chatid,
    };
    await db.doc("users/$m").collection("messages").add(data);
  }
  Future<String> formattedDate() async {

    return await GlobalFormatedtime();
  }

  Future<String> GlobalFormatedtime()   async {

    var url =
    Uri.https('worldtimeapi.org', 'api/timezone/Africa/Cairo');
    var response =  await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
      convert.jsonDecode(response.body) as Map<String, dynamic>;
      String tt = jsonResponse['datetime'];
      var formatedTime = tt.replaceFirst("T", " ").substring(0, tt.indexOf('.')).replaceFirst(".", "");
      print('Time: $formatedTime');
      return formatedTime; } else {   DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
    return formattedDate;
    }
  }

}

