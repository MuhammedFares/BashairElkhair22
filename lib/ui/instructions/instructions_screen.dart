
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


class InstructionsScreen extends StatefulWidget {
  @override
  State<InstructionsScreen> createState() => _InstructionsScreen();
}

class _InstructionsScreen extends State<InstructionsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBar(
        onTap: (index) {
          if(index==0){
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
                height: 900.0.h,
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
                  'بشائر الخير ',
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
                  '\"يَا أَبَتِ هَٰذَا تَأْوِيلُ رُؤْيَايَ\"',
                  style: GoogleFonts.notoKufiArabic(
                      color: HexColor('FABC05'),
                      fontSize: 13.0.sp
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 95.0,top: 125.0).r,
                child: Text(
                  'الارشادات' ,
                  style: GoogleFonts.notoKufiArabic(
                    fontSize: 35.0.sp,
                    fontWeight: FontWeight.w500,
                    //fontFamily: 'Outfit-Medium.ttf',
                    color: HexColor('55e8Fc'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0,right: 10.0,top: 200.0).r,
                child: Column(

                  children: [
                    Text(
                      ' عميلنا العزيز ',
                      style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    EasyRichText(
                      " . زر (أحلامى) يعرض لك أحلامك السابقه    بالتطبيق التى "
                          "فسرت و التى تحت التنفيذ. ",
                      defaultStyle: GoogleFonts.notoKufiArabic(
                        color: Colors.white,
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w800
                    ),
                      patternList: [
                        EasyRichTextPattern(
                          targetString: 'أحلامى',
                          style: TextStyle(color: HexColor('55e8Fc')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    EasyRichText(
                      " . زر (احلام عامة) يمكن من خلاله الاطلاع علي الاحلام التي فسرت بالتطبيق بعد اخذ موافقة اصحاب هذه الاحلام علي نشرها للعامه  "
                          "من اجل الاستفادة ومعرفة اساليب المفسرين في التفسير.",
                      defaultStyle: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                      patternList: [
                        EasyRichTextPattern(
                          targetString: 'احلام عامة',
                          style: TextStyle(color: HexColor('55e8Fc')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    EasyRichText(
                      " . زر (المفسرون) يعرفك على المفسرين بالتطبيق  "
                          "و خبراتهم فى مجال التفسير.",
                      defaultStyle: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                      patternList: [
                        EasyRichTextPattern(
                          targetString: 'المفسرون',
                          style: TextStyle(color: HexColor('55e8Fc')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    EasyRichText(
                      " . زر (خدمات التطبيق) يعرفك بانواع الرؤى   "
                          "و اسعارها و زمن تفسيرها.",
                      defaultStyle: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                      patternList: [
                        EasyRichTextPattern(
                          targetString: 'خدمات التطبيق',
                          style: TextStyle(color: HexColor('55e8Fc')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    EasyRichText(
                      " . زر (طلب تفسير حلمى ) من خلاله تستطيع    "
                          "كتابه و تفسير حلمك بسهوله.",
                      defaultStyle: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                      patternList: [
                        EasyRichTextPattern(
                          targetString: 'طلب تفسير حلمى',
                          style: TextStyle(color: HexColor('55e8Fc')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    EasyRichText(
                      " . زر (خدمه العملاء ) يقدم لك المساعده "
                          "فى اى مشكله تواجهك او الرد على استفسارك.",
                      defaultStyle: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                      patternList: [
                        EasyRichTextPattern(
                          targetString: 'خدمه العملاء',
                          style: TextStyle(color: HexColor('55e8Fc')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    EasyRichText(
                      " . زر (شارك التطبيق ) هذا تكرما منك لدعم  "
                          "التطبيق و الجهد المبذول فى تقديم خدمه مميزه .",
                      defaultStyle: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                      patternList: [
                        EasyRichTextPattern(
                          targetString: 'شارك التطبيق',
                          style: TextStyle(color: HexColor('55e8Fc')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0.h,
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
