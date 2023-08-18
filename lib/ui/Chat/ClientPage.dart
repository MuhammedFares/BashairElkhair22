import 'package:bshair_elkher/ui/Database/chatmessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'chatlist.dart';
import 'input.dart';

class ConversationPage extends StatefulWidget {
  var messageList; bool mofa; var chatid;var player;

  ConversationPage(this.mofa,this.messageList,this.chatid,this.player, {super.key});

  final GlobalKey<_ConversationPageState> clientpagekey = GlobalKey();

  @override
  _ConversationPageState createState() => _ConversationPageState(mofa,messageList,chatid,player);

}

class _ConversationPageState extends State<ConversationPage> {
  _ConversationPageState(mofa,messageList, chatid,player);


  @override
  Widget build(BuildContext context) {
     dynamic refresh(chatmessage? se) {
      setState(() {
        widget.messageList.add(se);
        print("notified");
      });
    }
    return SafeArea(
        child: Scaffold(
            body: Stack(children: <Widget>[
              Column(
                children: <Widget>[

                  ChatListWidget(widget.messageList),//Chat list
                 //  InputWidget(widget.mofa,widget.chatid,widget.player,widget.messageList,refresh) // The input widget
                ],
              ),
            ]
            )
        )
    );

  }



}