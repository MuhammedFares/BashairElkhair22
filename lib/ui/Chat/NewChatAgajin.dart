import 'package:bshair_elkher/ui/Database/chatmessage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'ChatWidgets.dart';



class Newchatagain extends StatefulWidget {
  var messageList,chatid,player;
  bool mofa;

  Newchatagain(this.mofa,this.messageList,this.chatid,this.player, {super.key});
  @override
  _NewchatagainState createState() => _NewchatagainState(mofa,messageList,chatid,player);

}

class _NewchatagainState extends State<Newchatagain> {
  _NewchatagainState(mofa,messageList, chatid,player);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: genMesseages(widget.messageList),
      ),
    );
  }

  Widget genMesseages(List<chatmessage> u) {
    print(u.length);
    var ch = widget.chatid;
    var snaps = FirebaseFirestore.instance
        .doc("users/$ch").collection("messages").snapshots();

    Stream<QuerySnapshot> stream = snaps;
    stream.forEach((QuerySnapshot element) {
      element.docs.forEach((d) {
        chatmessage m = chatmessage(d["body"], d["Sender"], d["date"]);
        print(m.date);
        u.add(m);
      });
      u.sort((a, b) {
        var adate = a.date;
        var bdate = b.date;
        return -bdate.compareTo(adate);
      });
    });
    final ScrollController listScrollController = ScrollController();

    List<Widget> wid =[];
    print(wid.length);

    u.forEach((element) {

      if(element.sender =="client"){

        wid.add(ChatWidgets().SelfMessage(element));
      }
      else {
        wid.add(ChatWidgets().OtherMessage(element));
      }
      print(wid.length);
    });
    print(wid.length);

    wid.add(ChatWidgets().keybad(widget.mofa, widget.player, widget.messageList, widget.chatid));
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),

      //TODO : Here to Receive messages
      itemBuilder: (context, index) => Column(children: wid,),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 1,
      reverse: false,
      controller: listScrollController,
    );
  }



}