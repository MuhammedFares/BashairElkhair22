
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../instructions/instructions.dart';


class DreamsInProgress extends StatefulWidget {
  var _count;
  DreamsInProgress(xt, {super.key}){
    _count = xt;
  }

  @override
  State<DreamsInProgress> createState() => _DreamsInProgressState(_count);
}

class _DreamsInProgressState extends State<DreamsInProgress> {
  _DreamsInProgressState(x);

  @override
  Widget build(BuildContext context) {
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Image.asset(
                'Assets/image/background.jpeg',
                width: double.infinity,
                height: 1200.0.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0,right: 20.0,top: 60.0).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'احلام تحت التنفيذ ',
                      style: GoogleFonts.notoKufiArabic(
                          fontSize: 30.0.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                      textAlign: TextAlign.center,

                    ),
                    EasyRichText(
                      widget._count.toString(),
                      defaultStyle: GoogleFonts.notoKufiArabic(
                          fontSize: 30.0.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                      patternList: [
                        EasyRichTextPattern(
                          targetString: '3 احلام',
                          style: GoogleFonts.notoKufiArabic(
                              color: HexColor('FABC05'),
                              fontSize: 32.0.sp,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 60.0.w,
                          height: 60.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0).w,
                            border: Border.all(
                              color: HexColor('FABC05'),
                              width: 8.0.w,
                            ),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            '1',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0.w,
                        ),
                        Container(
                          width: 240.0.w,
                          height: 60.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0).w,
                            border: Border.all(
                              color: HexColor('FABC05'),
                              width: 7.0.w,
                            ),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            //here to write dream data
                            '',
                            style: GoogleFonts.notoKufiArabic(
                                color: Colors.white,
                                fontSize: 28.0.sp,
                                fontWeight: FontWeight.w600
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
                        Container(
                          width: 60.0.w,
                          height: 60.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0).w,
                            border: Border.all(
                              color: HexColor('FABC05'),
                              width: 8.0.w,
                            ),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            '2',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0.w,
                        ),
                        Container(
                          width: 240.0.w,
                          height: 60.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0).w,
                            border: Border.all(
                              color: HexColor('FABC05'),
                              width: 7.0.w,
                            ),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            '',
                            style: GoogleFonts.notoKufiArabic(
                                color: Colors.white,
                                fontSize: 28.0.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
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
