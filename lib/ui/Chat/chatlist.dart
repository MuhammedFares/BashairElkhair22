import 'package:flutter/material.dart';

import 'ChatItemGroup.dart';

class ChatListWidget extends StatefulWidget{
  var ms;

  ChatListWidget(messagelist){ ms = messagelist;}

  @override
  State<ChatListWidget> createState() => _ChatListWidgetState(ms);

}



class _ChatListWidgetState extends State<ChatListWidget> {
  final ScrollController listScrollController = ScrollController();
  _ChatListWidgetState(ms);
  @override

  Widget build(BuildContext context) {


    return chci(widget.ms);
  }

  Widget chci(ms) {
   return Container(
        color: Colors.white,
        child: ListView.builder(
          padding: const EdgeInsets.all(10.0),

          //TODO : Here to Receive messages
          itemBuilder: (context, index) => ChatItemGroup(widget.ms),
          itemCount: 1,
          reverse: false,
          controller: listScrollController,
        ));
  }
}
