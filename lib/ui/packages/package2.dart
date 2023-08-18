
// ignore_for_file: use_build_context_synchronously

import 'package:bshair_elkher/ui/Database/DB.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../choice_commentator/choice_commentator2.dart';
import '../instructions/instructions.dart';
import '../instructions/prog.dart';
import '../login/loginTools.dart';

class Packages2 extends StatefulWidget {

  @override
  State<Packages2> createState() => _Packages2State();
}

class _Packages2State extends State<Packages2> {
  @override
  Widget build(BuildContext context) {
    if(LoadingIndicatorDialog().isDisplayed){
      LoadingIndicatorDialog().dismiss();
    }
    return Scaffold(
      bottomNavigationBar: bottomNavBar(
        onTap: (index) {
          if (index==2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Instructions()));
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
        child: Stack(
          children: [
            Image.asset(
              'Assets/image/darkback.png',
              width: double.infinity,
              height: 720.0.h,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0).r,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0,left:0.0,right:0.0).r,
                          child: Image.asset(
                            'Assets/image/logo.png',
                            width: 80.0.w,
                            height: 80.0.h,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 50.0,left:0.0,right:9.0).r,
                          width: 240.0.w,
                          height: 90.0.h,
                          decoration: BoxDecoration(
                              color: HexColor('58e6fe'),
                              borderRadius: BorderRadius.circular(15.0).w
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'عميلنا العزيز ',
                                style: GoogleFonts.notoKufiArabic(
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w800
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                'الرجاء اختيار نوع الخدمة '
                                    'التي ترغب فيها بناء علي زمن التفسير ',
                                style: GoogleFonts.notoKufiArabic(
                                    fontSize: 13.0.sp,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.0.h,),
                    InkWell(
                      onTap: ()async{

                        //Normal Dream
                        LoadingIndicatorDialog().show(context,"جار تحميل المفسرين");
                        var monames = await GetNormalRecivers();
                        LoadingIndicatorDialog().dismiss();
                        Navigator.push(context, MaterialPageRoute
                          (builder: (context)=>ChoiceCommentator2(dreamtype.normal,monames)));
                      },
                      child: Container(
                        width: double.infinity.w,
                        height: 80.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0).w,
                          color: Colors.white,

                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5.0.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'رؤية عادية ',
                                  style: GoogleFonts.notoKufiArabic(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13.0.sp,
                                  ),
                                ),
                                SizedBox(
                                  width: 148.0.w,
                                ),
                                Text(
                                  '15 ريال س ',
                                  style: GoogleFonts.notoKufiArabic(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15.0.sp,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'يتم التفسير خلال 24 ساعه ',
                              style: GoogleFonts.notoKufiArabic(
                                fontWeight: FontWeight.w800,
                                fontSize: 15.0.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    InkWell(
                      onTap: ()async{
                        LoadingIndicatorDialog().show(context,"جار تحميل المفسرين");
                        var monames = await GetbronzeRecivers();
                        LoadingIndicatorDialog().dismiss();
                        Navigator.push(context, MaterialPageRoute
                          (builder: (context)=>ChoiceCommentator2(dreamtype.bronze,monames)));
                      },
                      child: Container(
                        width: double.infinity.w,
                        height: 80.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0).w,
                          color: HexColor('C0C0C0'),

                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5.0.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'رؤية فضيه ',
                                  style: GoogleFonts.notoKufiArabic(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13.0.sp,
                                  ),
                                ),
                                SizedBox(
                                  width: 148.0.w,
                                ),
                                Text(
                                  '20 ريال س ',
                                  style: GoogleFonts.notoKufiArabic(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15.0.sp,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'يتم التفسير خلال 12 ساعه ',
                              style: GoogleFonts.notoKufiArabic(
                                fontWeight: FontWeight.w800,
                                fontSize: 15.0.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    InkWell(
                      onTap: () async {
                        LoadingIndicatorDialog().show(context,"جار تحميل المفسرين");
                        var monames = await GetGoldenRecivers();
                        LoadingIndicatorDialog().dismiss();

                        Navigator.push(context, MaterialPageRoute
                          (builder: (context)=>ChoiceCommentator2(dreamtype.golden,monames)));


                      },
                      child: Container(
                        width: double.infinity.w,
                        height: 80.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0).w,
                          color: HexColor('FABC05'),

                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5.0.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'رؤية ذهبية ',
                                  style: GoogleFonts.notoKufiArabic(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13.0.sp,
                                  ),
                                ),
                                SizedBox(
                                  width: 150.0.w,
                                ),
                                Text(
                                  '30 ريال س ',
                                  style: GoogleFonts.notoKufiArabic(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15.0.sp,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'يتم التفسير خلال 6 ساعه ',
                              style: GoogleFonts.notoKufiArabic(
                                fontWeight: FontWeight.w800,
                                fontSize: 15.0.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    InkWell(
                      onTap: () async {
                        LoadingIndicatorDialog().show(context,"جار تحميل المفسرين");
                        var monames = await GetInstantRecivers();
                        LoadingIndicatorDialog().dismiss();

                        Navigator.push(context, MaterialPageRoute
                          (builder: (context)=>ChoiceCommentator2(dreamtype.instant,monames)));

                      },
                      child: Container(
                        width: double.infinity.w,
                        height: 80.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0).w,
                          color: HexColor('58E6Fe'),

                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5.0.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'رؤية فورية ',
                                  style: GoogleFonts.notoKufiArabic(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13.0.sp,
                                  ),
                                ),
                                SizedBox(
                                  width: 150.0.w,
                                ),
                                Text(
                                  '40 ريال س ',
                                  style: GoogleFonts.notoKufiArabic(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15.0.sp,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'يتم التفسير خلال 3 ساعه ',
                              style: GoogleFonts.notoKufiArabic(
                                fontWeight: FontWeight.w800,
                                fontSize: 15.0.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
