import 'package:bshair_elkher/ui/Chat/FullChat.dart';
import 'package:bshair_elkher/ui/Database/chatmessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class ReadOnlyC extends StatefulWidget {
  var messageList,chatid,player;
  bool mofa;

  ReadOnlyC(this.mofa,this.messageList,this.chatid,this.player, {super.key});
  @override
  _ReadOnlyChatState createState() => _ReadOnlyChatState(mofa,messageList,chatid,player);

}

class _ReadOnlyChatState extends State<ReadOnlyC> {
  _ReadOnlyChatState(mofa, messageList, chatid, player);

  refresh(chatmessage? a) {
    setState(() {
      widget.messageList.add(a);

      print("scroll");
    });
  }

  @override
  Widget build(BuildContext context) {

// This is what you're looking for!

    final ScrollController _scrollController = ScrollController();

    return SafeArea(
        child: Scaffold(
            body:  Column(
                children: [
                  Expanded(
                      child:
                      ListView.builder(
                          controller: _scrollController,
                          shrinkWrap: true,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return  Fullchat(
                                widget.mofa, widget.messageList, widget.chatid,
                                widget.player);
                          }
                      )
                  )
                  ,
                ]
            )
        )
    );
  }
}

