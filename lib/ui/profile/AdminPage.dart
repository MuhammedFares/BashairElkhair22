
import 'package:bshair_elkher/ui/nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


import '../DividerLine.dart';
import '../Tools/RegID.dart';



class AdminPage extends StatefulWidget {
  const AdminPage({super.key});


  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child :Scaffold(
        bottomNavigationBar: bottomNavBarCommentator(
          onTap: (index) {
            /*if(index==0){
            print(index);
            if(currentIndex != index)
              {
            Navigator.pop(context);}
          }
          setState(() {
            currentIndex = index ;
          });*/
            if(index==3) {
              Navigator.pop(context);
            }
          } ,
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                //BackGround
                Image.asset(
                  'Assets/image/darkback.png',
                  width: double.infinity,
                  height: 695.0.h,
                  fit: BoxFit.cover,
                ),

                // Logout Button
               Padding(
                  padding: const EdgeInsets.only(top: 50.0,right: 300.0).r,

                  child:Column(
                    children: [
                      InkWell(
                        onTap:()
                        async{
                          RegID().Logout();//regid
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20.0.w,
                          child: Column(
                            children: [
                              //   SizedBox(
                              //   height: 10.0.h,
                              //),
                              Image.asset(
                                'Assets/image/bigexit.png',
                                fit: BoxFit.cover,
                                width: 40.0.w,
                                height: 35.0.h,
                              ),
                            ],
                          ),
                        ), // Logout
                      ),

                    ],
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    const HorizontalOrLine(label: 'الماليات',height:10),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0 ,right: 20.0).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                              children :
                              [
                                Text(
                                  '- الماليات',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),


                              ]),
                          SizedBox(
                            width: 25.0.w,
                          ),

                        ],

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0 ,right: 20.0).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                          children :
                          [
                            Text(
                            'الدخل الشهري',
                            style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          Container(
                            width: 80.0.w,
                            height: 25.0.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0).w,
                              color: HexColor('fcba0e'),
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              '0 ر س',
                              style: GoogleFonts.notoKufiArabic(
                                color: Colors.white,
                                fontSize: 13.0.sp,

                              ),
                            ),
                          ),
                          ]),
                          SizedBox(
                            width: 25.0.w,
                          ),

                          Column(
                              children :
                              [
                                Text(
                                  'المطلوب',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 40.0.w,
                                ),
                                Container(
                                  width: 80.0.w,
                                  height: 25.0.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0).w,
                                    color: HexColor('fcba0e'),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '0 ر س',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 13.0.sp,

                                    ),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 25.0.w,
                          ),

                          Column(
                              children :
                              [
                                Text(
                                  'الصافي',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 60.0.w,
                                ),
                                Container(
                                  width: 80.0.w,
                                  height: 25.0.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0).w,
                                    color: HexColor('fcba0e'),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '0 ر س',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 13.0.sp,

                                    ),
                                  ),
                                ),
                              ]),

                        ],

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0 ,right: 20.0).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                              children :
                              [
                                Text(
                                  '- الرؤي ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),


                              ]),
                          SizedBox(
                            width: 25.0.w,
                          ),

                        ],

                      ),
                    ),
                    // Money
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0 ,right: 20.0).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                              children :
                              [
                                Text(
                                  'اجمالي الرؤي  ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                Container(
                                  width: 80.0.w,
                                  height: 25.0.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0).w,
                                    color: HexColor('fcba0e'),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '0 ر س',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 13.0.sp,

                                    ),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 25.0.w,
                          ),

                          Column(
                              children :
                              [
                                Text(
                                  'تم التفسير',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 40.0.w,
                                ),
                                Container(
                                  width: 80.0.w,
                                  height: 25.0.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0).w,
                                    color: HexColor('fcba0e'),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '0 ر س',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 13.0.sp,

                                    ),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 25.0.w,
                          ),

                          Column(
                              children :
                              [
                                Text(
                                  'قيد التفسير',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 60.0.w,
                                ),
                                Container(
                                  width: 80.0.w,
                                  height: 25.0.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0).w,
                                    color: HexColor('fcba0e'),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '0 ر س',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 13.0.sp,

                                    ),
                                  ),
                                ),
                              ]),

                        ],

                      ),
                    ), // Dreams
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0 ,right: 39.0).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                              children :
                              [
                                Text(
                                  'ذهبية ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                Container(
                                  width: 80.0.w,
                                  height: 25.0.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0).w,
                                    color: HexColor('fcba0e'),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '0 ر س',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 13.0.sp,

                                    ),
                                  ),
                                ),
                              ]), // Golden
                          SizedBox(
                            width: 25.0.w,
                          ),

                          Row(
                              children :
                              [
                                Text(
                                  'فضية ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                Container(
                                  width: 80.0.w,
                                  height: 25.0.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0).w,
                                    color: HexColor('fcba0e'),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '0 ر س',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 13.0.sp,

                                    ),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 25.0.w,
                          ),


                        ],

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0 ,right: 39.0).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                              children :
                              [
                                Text(
                                  'عادية ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                Container(
                                  width: 80.0.w,
                                  height: 25.0.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0).w,
                                    color: HexColor('fcba0e'),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '0 ر س',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 13.0.sp,

                                    ),
                                  ),
                                ),
                              ]), // Golden
                          SizedBox(
                            width: 25.0.w,
                          ),

                          Row(
                              children :
                              [
                                Text(
                                  'فورية ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                Container(
                                  width: 80.0.w,
                                  height: 25.0.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0).w,
                                    color: HexColor('fcba0e'),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '0 ر س',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 13.0.sp,

                                    ),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 25.0.w,
                          ),


                        ],

                      ),
                    ),
                    // Yewllo fcba0e
                    // green 027f33
                    // red ff5654

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
