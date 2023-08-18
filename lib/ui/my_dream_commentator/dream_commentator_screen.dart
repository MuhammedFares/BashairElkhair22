
import 'package:bshair_elkher/ui/Database/DB.dart';
import 'package:bshair_elkher/ui/my_dream_commentator/dream_commentator_inprogress.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'dream_commentator_finished.dart';


class DreamCommentatorScreen extends StatefulWidget {
  @override
  State<DreamCommentatorScreen> createState() => _DreamCommentatorScreenState();
}

class _DreamCommentatorScreenState extends State<DreamCommentatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBarCommentator(
        onTap: (index) {
          if (index==2){
            Navigator.pop(context);
          }if(index==0){
            Navigator.pop(context);
          }
          setState(() {
            currentIndex = index ;
          });
        } ,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(

            children: [
              Image.asset(
                'Assets/image/darkback.png',
                width: double.infinity,
                height: 800.0.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0,right: 25.0).r,
                child: Image.asset(
                  'Assets/image/logo.png',
                  width: 70.0.w,
                  height: 70.0.h,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0,top: 35.0).r,
                child: Text(
                  ' بشائر الخير ',
                  style: GoogleFonts.notoKufiArabic(
                    fontSize: 35.0.sp,
                    fontWeight: FontWeight.w400,
                    //fontFamily: 'Outfit-Medium.ttf',
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 115.0,top: 95.0).r,
                child: Text(
                  '\" يَا أَبَتِ هَٰذَا تَأْوِيلُ رُؤْيَايَ\"',
                  style: GoogleFonts.notoKufiArabic(
                      color: HexColor('FABC05'),
                      fontSize: 13.0.sp
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90.0,top: 160.0).r,
                child: Text(
                  'احلامى' ,
                  style: GoogleFonts.notoKufiArabic(
                    fontSize: 50.0.sp,
                    fontWeight: FontWeight.bold,
                    //fontFamily: 'Outfit-Medium.ttf',
                    color: HexColor('55e8Fc'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0,right: 10.0,top: 300.0).r,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        var x = await Mofinisheddreams();
                        var y = x.length.toString();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>DreamsCommentatorFinished(x,y)));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 15.0).r,
                        width: double.infinity,
                        height: 90.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0).w,
                          color: HexColor('008036'),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          'احلام تم تفسيرها ',
                          style: GoogleFonts.notoKufiArabic(
                            fontSize: 28.0.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    InkWell(
                      onTap: ()async {
                        var x = await MoNotfinished();
                        var y = x.length.toString();
                        print(y);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>DreamsCommentatorInProgress(x,y)));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 15.0).r,
                        width: double.infinity,
                        height: 90.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0).w,
                          color: Colors.blue[400],
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          'احلام تحت التنفيذ ',
                          style: GoogleFonts.notoKufiArabic(
                            fontSize: 28.0.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
