import 'package:bshair_elkher/ui/Database/chatmessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'chatlist.dart';

class ReadOnlyChat extends StatefulWidget {
  var messageList,chatid,player;
  bool mofa;

  ReadOnlyChat(this.mofa,this.messageList,this.chatid,this.player, {super.key});
  @override
  _ReadOnlyChatState createState() => _ReadOnlyChatState(mofa,messageList,chatid,player);

}

class _ReadOnlyChatState extends State<ReadOnlyChat> {
  _ReadOnlyChatState(mofa,messageList, chatid,player);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: <Widget>[
              Column(
                children: <Widget>[
                  ChatListWidget(widget.messageList),//Chat list
                ],
              ),
            ]
            )
        )
    );
  }



}