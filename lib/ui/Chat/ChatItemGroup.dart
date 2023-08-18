import 'package:bshair_elkher/ui/Chat/platter.dart';
import 'package:bshair_elkher/ui/Database/chatmessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatItemGroup extends StatelessWidget {
  List<chatmessage> messagesList;

  ChatItemGroup(this.messagesList, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    List<Widget> ms = [];

    for (var element in messagesList) {
      if (element.sender == "client") {
        //This is the sent message. We'll later use data from firebase instead of index to determine the message is sent or received.
        ms.add(Column(

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
                  element.body,
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
                    element.date,
                    style: TextStyle(
                        color: Palette.greyColor,
                        fontSize: 12.0,
                        fontStyle: FontStyle.normal),
                  ),
                )
              ])
        ]));
      }
      else {
        ms.add(Container(
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
                      element.body,
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
                  element.date,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontStyle: FontStyle.normal),
                  textAlign: TextAlign.right,

                ),
              )
            ],
          ),
        ));
      }
    }


    return Column(
      children: ms,
    );
  }
}