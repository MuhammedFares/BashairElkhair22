import 'package:bshair_elkher/ui/Chat/platter.dart';
import 'package:bshair_elkher/ui/Database/chatmessage.dart';
import 'package:bshair_elkher/ui/Notifications/onesignal_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Database/chatDb.dart';
import 'ClientPage.dart';
import 'chatlist.dart';

class InputWidget extends StatelessWidget {


  String chatid;
  String player;
  bool mofa;
  List<chatmessage> ls;
  final Function(chatmessage? a) notifyParent;

  InputWidget(this.mofa, this.chatid, this.player, this.ls, this.notifyParent);

  //final TextEditingController textEditingController = TextEditingController();
  TextEditingController msg = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: Colors.amberAccent, width: 1.5)),
          color: Colors.white),
         child: Row (
        children: <Widget>[


          Material(
            color: Colors.transparent,
            child:  Container(
              margin:  const EdgeInsets.symmetric(horizontal: 8.0),
              child:  IconButton(
                icon:  const Icon(Icons.arrow_back_ios),
                onPressed:() async {
                  Navigator.pop(context);
                },
                color: Colors.red,
              ),
            ),
          ),
          //
          // Text input
          SizedBox(
            width: 10.w,
          ),
          Flexible(
            child: Container(
              child: TextField(
                textAlign: TextAlign.right,
                style:TextStyle(
                    fontSize: 15.0.sp,
                    fontWeight: FontWeight.w600
                ),
                controller: msg,
                decoration: InputDecoration.collapsed(
                  hintText: 'اكتب رسالتك',
                  hintStyle: TextStyle(color: Palette.greyColor),
                ),
              ),
            ),
          ),
          // Send Message Button
          Material(
            color: Colors.white,
            child:  Container(
              margin:  const EdgeInsets.symmetric(horizontal: 8.0),
              child:  IconButton(
                icon:  const Icon(Icons.send),
                onPressed:() async {
                  if (!mofa) {
                    if (msg.value.text.isNotEmpty) {
                      chatmessage s = chatmessage(
                        msg.text.trim(), "client",
                        await chatdb().formattedDate(),);
                      String x = msg.text;
                      msg.clear();

                     notifyParent(s);


                      await chatdb().AddMessage(chatid, s);
                      await SendNotification(player, "لديك رسالة جديدة", x);

                      //Refresh chat page
                    }
                  }
                  else if   (mofa) {
                    if (msg.value.text.isNotEmpty) {
                      chatmessage s = chatmessage(
                        msg.text.trim(), "notclient",
                        await chatdb().formattedDate(),);
                      String x = msg.text;
                      msg.clear();
                      notifyParent(s);


                      print("test");
                      await chatdb().AddMessage(chatid, s);
                      await SendNotification(player, "لديك رسالة جديدة", x);

                      //Refresh chat page
                    }
                  }
                },
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

