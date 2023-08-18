
import 'package:bshair_elkher/ui/MoWidget.dart';
import 'package:bshair_elkher/ui/information/information_screen1.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../instructions/instructions.dart';
import '../instructions/prog.dart';


class ChoiceCommentator2 extends StatefulWidget {

  var dtype; var monames;
   ChoiceCommentator2(xt,yt){
     dtype = xt;
     monames = yt;
   }

  @override
  State<ChoiceCommentator2> createState() => _ChoiceCommentator2State(dtype,monames);
}

class _ChoiceCommentator2State extends State<ChoiceCommentator2> {
  _ChoiceCommentator2State(dtype,monames);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: bottomNavBar(
        onTap: (index) {
          if (index==2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Instructions()));
          }if(index==0){
            Navigator.pop(context);
          }
          setState(() {
            currentIndex = index ;
          });
        } ,
      ),
      backgroundColor: Colors.indigo,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [

              Padding(
                padding: const EdgeInsets.only(right: 65.0,top: 35.0).r,
                child: Text(
                  textAlign: TextAlign.center,
                  'يرجى اختيار المفسر',
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 23.0.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
              //Here to request the mos

                  MoWidget().getavmos(context,widget.dtype,widget.monames),
              ),
            ],
          ),
        ),
      ),);

  }
}
