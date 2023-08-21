import 'package:bshair_elkher/ui/Chat/platter.dart';
import 'package:bshair_elkher/ui/Database/chatmessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Database/chatDb.dart';
import '../Notifications/onesignal_flutter.dart';

class ChatWidgets
{
  Widget SelfMessage(chatmessage m ) {
   return Column(

       children: <Widget>[
         Row(
           mainAxisAlignment:
           MainAxisAlignment.end,

           children: <Widget>[
             Container(
               padding:const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
               width: 200.0,
               decoration: BoxDecoration(
                   color: Palette.selfMessageBackgroundColor,
                   borderRadius: BorderRadius.circular(8.0)),
               margin: const EdgeInsets.only(right: 10.0),
               child: Text(
                 m.body,
                 style: TextStyle(
                     color: Colors.black,
                     fontSize: 16.0.sp,
                     fontWeight: FontWeight.w600
                 ),
                 textAlign: TextAlign.right,
               ),
             )
           ], // aligns the chatitem to right end
         ),
         Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[
               Container(
                 margin: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
                 child: Text(
                   m.date,
                   style: TextStyle(
                       color: Palette.greyColor,
                       fontSize: 12.0,
                       fontStyle: FontStyle.normal),
                 ),
               )
             ])
       ]);
  }
  Widget OtherMessage(chatmessage m ) {

    return  Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                width: 200.0,
                decoration: BoxDecoration(
                    color: Palette.otherMessageBackgroundColor,
                    borderRadius: BorderRadius.circular(8.0)),
                margin: const EdgeInsets.only(left: 10.0),
                child: Text(
                  m.body,
                  style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
            child: Text(
              m.date,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontStyle: FontStyle.normal),
              textAlign: TextAlign.right,

            ),
          )
        ],
      ),
    );
  }

  Widget keybad(mofa,player,messagelist,chatid) {
    final TextEditingController textEditingController = TextEditingController();

    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: Colors.amberAccent, width: 1.5)),
          color: Colors.white),
      child: Row (
        children: <Widget>[

          SizedBox(
            width: 10.w,
          ),
          // Text input
          Flexible(
            child: Container(
              child: TextField(
                textAlign: TextAlign.right,
                style:TextStyle(
                    fontSize: 15.0.sp,
                    fontWeight: FontWeight.w600
                ),
                controller: textEditingController,
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
                    if (textEditingController.value.text.isNotEmpty) {
                      chatmessage s = chatmessage(
                        textEditingController.text.trim(), "client",
                        await chatdb().formattedDate(),);
                      String x = textEditingController.text;
                      textEditingController.clear();

                      // notifyParent(s);

                       await chatdb().AddMessage(chatid, s);
                      await SendNotification(player, "لديك رسالة جديدة", x);

                      //Refresh chat page
                    }
                  }
                  else if   (mofa) {
                    if (textEditingController.value.text.isNotEmpty) {
                      chatmessage s = chatmessage(
                        textEditingController.text.trim(), "notclient",
                        await chatdb().formattedDate(),);
                      String x = textEditingController.text;
                      textEditingController.clear();

                      // notifyParent(s);


                       await chatdb().AddMessage(chatid, s,);
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