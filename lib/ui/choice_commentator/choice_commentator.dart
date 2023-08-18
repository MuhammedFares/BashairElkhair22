import 'package:bshair_elkher/ui/commentators/abdulrahman.dart';
import 'package:bshair_elkher/ui/commentators/abo_yehia.dart';
import 'package:bshair_elkher/ui/commentators/ibrahim.dart';
import 'package:bshair_elkher/ui/commentators/mahmoud_fekery.dart';
import 'package:bshair_elkher/ui/commentators/malak.dart';
import 'package:bshair_elkher/ui/commentators/mohamed.dart';
import 'package:bshair_elkher/ui/commentators/om_raian.dart';
import 'package:bshair_elkher/ui/commentators/omnia_ahmed.dart';
import 'package:bshair_elkher/ui/commentators/abdo.dart';
import 'package:bshair_elkher/ui/commentators/omyoussef.dart';
import 'package:bshair_elkher/ui/commentators/osama.dart';
import 'package:bshair_elkher/ui/commentators/osman.dart';
import 'package:bshair_elkher/ui/commentators/swelam.dart';
import 'package:bshair_elkher/ui/commentators/youssef.dart';
import 'package:bshair_elkher/ui/commentators/Nour.dart';

import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../commentators/elmozza.dart';
import '../instructions/instructions.dart';


class ChoiceCommentator extends StatefulWidget {
  @override
  State<ChoiceCommentator> createState() => _ChoiceCommentatorState();
}

class _ChoiceCommentatorState extends State<ChoiceCommentator> {
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

      body:
      Stack(
        children: [
        Image.asset(
        'Assets/image/darkback.png',
        width: double.infinity,
        height: 1885.0.h,
        fit: BoxFit.cover,
      ),
      Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [

              Padding(
                padding: const EdgeInsets.only(right: 15.0,top: 30.0).r,
                child: Text(
                  textAlign: TextAlign.center,
                  'اضغط علي اي مفسر لمعرفة بياناته وسيرته الذاتيه',
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 20.0.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Mohamed()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0,top: 120.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/mohamed.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.0.h,
                              ),
                              Text(
                                'المفسر',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.7.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                'محمد المباشر',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.7.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' خبره 17 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              choiceCommentatorStar5(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Aboyehia()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0,top: 120.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(
                            color: HexColor('008036'),
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/image2.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 2.0.h,
                              ),
                              Text(
                                'المفسر',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.9.sp,
                                    fontWeight: FontWeight.w400
                                ),

                              ),
                              Text(
                                'ابو يحي الأشرم ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.9.sp,
                                    fontWeight: FontWeight.w400
                                ),

                              ),
                              Text(
                                ' خبره 20 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                              SizedBox(
                                height: 5.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),

                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Osama()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(
                            color: HexColor('008036'),
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/image3.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 10.0.h,
                              ),
                              Text(
                                ' الشيخ ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' أسامه قديل ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' خبره 20 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OmniaAhmed()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/image4.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 10.0.h,
                              ),
                              Text(
                                'المفسرة ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                'امنية احمد  ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' خبره 20 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),

                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MahmoudFekery()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/image6.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 10.0.h,
                              ),
                              Text(
                                'المفسر',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' محمود فكري ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' خبره 21 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OmRaian()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(
                            color: HexColor('008036'),
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/image5.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 6.0.h,
                              ),
                              Text(
                                'المفسرة',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                'ام ريان',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' خبره 3 سنوات ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),

                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Abdulrahman()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(
                            color: HexColor('008036'),
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/image1.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 8.0.h,
                              ),
                              Text(
                                ' المفسر',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' عبد الرحمن الاحمري',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' خبره 20 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Malak()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/malak.jpg',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 7.0.h,
                              ),
                              Text(
                                'المفسرة',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                               'ملاك تفسير الاحلام',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' خبره 20 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),


                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>abdo()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(
                           // color: HexColor('008036'),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/abdo.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 8.0.h,
                              ),
                              Text(
                                ' المفسر',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' عبد الستار حشمت',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' خبره 13 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Ibrahim()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(

                            color: HexColor('008036'),
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/ibrahem.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              Text(
                                'الدكتور',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 18.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                'ابراهيم الجنابي',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 18.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' خبره 15 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 20.0.w,
                  ),

                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Nour()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(
                            // color: HexColor('008036'),
                            color: HexColor('008036'),
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/Nour.jpg',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 8.0.h,
                              ),
                              Text(
                                ' الدكتورة',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' نور الهدي الجمال',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                ' خبره اكثر من 15 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>swelam()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(

                           // color: HexColor('008036'),
                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/swelam.jpg',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              Text(
                                'المفسر',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 18.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                'يوسف عبدالله السويلم',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 12.0.sp,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              Text(
                                ' خبره اكثر من 35 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 20.0.w,
                  ),


                  Row(
                    children: [
                    /*  InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>aziz()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(

                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/aziz.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),

                              Text(
                                'تفسير الاحلام \n ابو عزيز',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 17.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                              Text(
                                ' خبره 35 عام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),*/
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>thwaiba()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                          width: 150.0.w,
                          height: 190.0.h,
                          decoration: BoxDecoration(

                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.0).r,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.0.w,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'Assets/image/img.png',
                                    ),
                                    radius: 30.0.w,
                                  ),
                                  SizedBox(
                                    width: 15.0.w,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),

                              Text(
                                "المفسرة \n ثويبة صابر",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 17.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                              Text(
                                ' خبره 10 اعوام ',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              choiceCommentatorStar5()
                            ],
                          ),
                        ),
                      ),
                  SizedBox(
                    height: 30.0.w,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>youssef()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0,right: 23.0).r,
                      width: 150.0.w,
                      height: 190.0.h,
                      decoration: BoxDecoration(

                        color: HexColor('008036'),
                        borderRadius: BorderRadius.circular(15.0).r,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 40.0.w,
                              ),
                              CircleAvatar(
                                backgroundImage: const AssetImage(
                                  'Assets/image/youssef.jpg',
                                ),
                                radius: 30.0.w,
                              ),
                              SizedBox(
                                width: 15.0.w,
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 1.0.h,
                          ),
                          Text(
                            'الدكتور',
                            style: GoogleFonts.notoKufiArabic(
                                color: Colors.white,
                                fontSize: 18.0.sp,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Text(
                            'يوسف الحارثي',
                            style: GoogleFonts.notoKufiArabic(
                                color: Colors.white,
                                fontSize: 18.0.sp,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Text(
                            ' خبره 30 عام ',
                            style: GoogleFonts.notoKufiArabic(
                                color: Colors.white,
                                fontSize: 16.0.sp,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(
                            height: 1.0.h,
                          ),
                          choiceCommentatorStar5()
                        ],
                      ),
                    ),
                  ),
                    ]),
                  SizedBox(
                    height: 20.0.w,
                  ),
                  Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 0.0).r,
                            child:
                            InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>omyoussef()));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                            width: 150.0.w,
                            height: 190.0.h,
                            decoration: BoxDecoration(

                              color: HexColor('008036'),
                              borderRadius: BorderRadius.circular(15.0).r,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 40.0.w,
                                    ),
                                    CircleAvatar(
                                      backgroundImage: const AssetImage(
                                        'Assets/image/omyoussef.jpeg',
                                      ),
                                      radius: 30.0.w,
                                    ),
                                    SizedBox(
                                      width: 15.0.w,
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  height: 1.0.h,
                                ),

                                Text(
                                  "المفسرة \n عواطف ام يوسف",
                                 textAlign: TextAlign.center,
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 17.0.sp,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),

                                Text(
                                  ' خبره 30 عام ',
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 16.0.sp,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                                SizedBox(
                                  height: 1.0.h,
                                ),
                                choiceCommentatorStar5()
                              ],
                            ),
                          ),
                        ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 10.0).r,
                          child:
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Osman()));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
                              width: 150.0.w,
                              height: 190.0.h,
                              decoration: BoxDecoration(

                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15.0).r,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 40.0.w,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: const AssetImage(
                                          'Assets/image/osman.jpeg',
                                        ),
                                        radius: 30.0.w,
                                      ),
                                      SizedBox(
                                        width: 15.0.w,
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 1.0.h,
                                  ),

                                  Text(
                                    "المفسر \n عثمان محمد بخش",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.notoKufiArabic(
                                        color: Colors.white,
                                        fontSize: 17.0.sp,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),

                                  Text(
                                    ' خبره 16 عام ',
                                    style: GoogleFonts.notoKufiArabic(
                                        color: Colors.white,
                                        fontSize: 16.0.sp,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.0.h,
                                  ),
                                  choiceCommentatorStar5()
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),

                ],
              ),
            ],
          ),
        ),
      ),
      ],
    ),
    );
  }
}
