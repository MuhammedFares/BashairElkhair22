import 'package:bshair_elkher/ui/Database/chatmessage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'ChatItemGroup.dart';


class Fullchat extends StatefulWidget {
  var messageList; bool mofa; var chatid;var player;

  Fullchat(this.mofa,this.messageList,this.chatid,this.player ,{super.key});


  @override
  _FullchatState createState() => _FullchatState(mofa,messageList,chatid,player);

}

class _FullchatState extends State<Fullchat> {
  _FullchatState(mofa, messageList, chatid, player);


  final TextEditingController textEditingController = TextEditingController();
  String ch = "";
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
      .doc("users/mokachat").collection("messages").snapshots();

  @override
    Widget build(BuildContext context) {
    String c = widget.chatid;
      return StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .doc("users/$c").collection("messages").snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            final ScrollController _scrollController = ScrollController();

            List<chatmessage> u= [];
            snapshot.data!.docs.forEach((element) {
              chatmessage m = chatmessage(element["body"], element["Sender"], element["date"]);



              u.add(m);
              if(_scrollController.hasClients) {
                _scrollController.jumpTo(
                    _scrollController.position.minScrollExtent);
                print("scrolled");
              }
            });
            u.sort((a,b) { var adate = a.date; var bdate = b.date;
              u.forEach((element) {print(element.body+"   "+element.date);});
            return -bdate.compareTo(adate);});
            print(u.length);

            return  ListView.builder(
              padding: const EdgeInsets.all(10.0),

              //TODO : Here to Receive messages
              itemBuilder: (context, index) => ChatItemGroup(u),
              itemCount: 1,
              controller:_scrollController ,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              reverse: false,
            );
           // return ChatListWidget(u);

          });
    }
  }

