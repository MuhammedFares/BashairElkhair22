import 'package:bshair_elkher/ui/Database/DB.dart';
import 'package:bshair_elkher/ui/DreamByComm/CommDreamList.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../instructions/instructions.dart';


class swelam extends StatefulWidget {

  @override
  State<swelam> createState() => _swelamState();
}

class _swelamState extends State<swelam> {
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
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Image.asset(
                'Assets/image/background.jpeg',
                width: double.infinity,
                height: 820.0.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0,right: 15.0).r,
                child: Image.asset(
                  'Assets/image/logo.png',
                  width: 70.0.w,
                  height: 70.0.h,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.0.h,
                  ),
                  CircleAvatar(
                    backgroundImage: const AssetImage(
                      'Assets/image/swelam.jpg',
                    ),
                    radius: 80.0.w,
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 55.0,right: 55.0).r,
                    padding: const EdgeInsets.only(right: 25.0,left: 20.0).r,
                    width: double.infinity.w,
                    height: 89.0.h,
                    decoration: BoxDecoration(
                        color: HexColor('008036'),
                        borderRadius: BorderRadius.circular(15.0).w
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 7.0.h,
                        ),
                        Text(
                          " المفسر \/ يوسف عبدالله السويلم     ",
                          style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w800
                          ),
                        ),
                        Text(
                          "  معبر رؤى من 35 سنه \n",

                          style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 13.0.sp,
                              fontWeight: FontWeight.w700
                          ),

                        ),


                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0).r,
                    margin: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10).r,
                    width: double.infinity.w,
                    height: 45.0.h,
                    decoration: BoxDecoration(
                      color: HexColor('55E8FC'),
                      borderRadius: BorderRadius.circular(15.0).w,
                    ),
                    child: Text(
                      "اخوكم معبر الرؤي منذ 35 عام من الاحساء",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoKufiArabic(
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0).r,
                    margin: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10).r,
                    width: double.infinity.w,
                    height: 45.0.h,
                    decoration: BoxDecoration(
                      color: HexColor('55E8FC'),
                      borderRadius: BorderRadius.circular(15.0).w,
                    ),
                    child: Text(
                      "مستشار اسري منذ 10 سنوات",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoKufiArabic(
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0).r,
                    margin: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10).r,
                    width: double.infinity.w,
                    height: 60.0.h,
                    decoration: BoxDecoration(
                      color: HexColor('55E8FC'),
                      borderRadius: BorderRadius.circular(15.0).w,
                    ),
                    child: Text(
                      "منهحي منهج اهل السنه والجماعه في تأويل الاحلام ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoKufiArabic(
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                  ),


                  SizedBox(
                    height: 5.0.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0).r,
                    child: Text(
                      'التقييم',
                      style: GoogleFonts.notoKufiArabic(
                          fontSize: 25.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  star(),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var x = (await MoXdreams('yos10')
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CommDreamList(x)));

                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 10.0).r, backgroundColor: Colors.blue[400],
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0).w,
                        side: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    child: Text(
                      'احلام عامة لنفس المفسر ',
                      style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w600

                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
