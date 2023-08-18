
import 'package:bshair_elkher/main.dart';
import 'package:bshair_elkher/ui/Database/DB.dart';
import 'package:bshair_elkher/ui/ModernUi/Snack.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';



class ReceivingRequests extends StatefulWidget {


  ReceivingRequests(all,normal, bronze, golden,instant, {super.key}){
     one = all;two=normal;three = bronze;four=golden;five = instant;
  }


  var one,two,three,four,five;



  @override
  State<ReceivingRequests> createState() => _ReceivingRequestsState(one,two,three,four,five);
}

class _ReceivingRequestsState extends State<ReceivingRequests> {


  _ReceivingRequestsState(all, normal, bronze, golden, instant);

  @override
  Widget build(BuildContext context) {
    var mo_id="ss";
    return Scaffold(
      bottomNavigationBar: bottomNavBar(
        onTap: (index) {
          if (index==2){
            Navigator.pop(context);
          }if(index==0){
            if (kDebugMode) {
              print(index);
            }
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
                          padding: const EdgeInsets.only(top: 50.0,).r,
                          child: Image.asset(
                            'Assets/image/logo.png',
                            width: 70.0.w,
                            height: 70.0.h,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 50.0,left: 0.0,right:10.0).r,
                          width: 250.0.w,
                          height: 40.0.h,
                          decoration: BoxDecoration(
                              color: HexColor('58e6fe'),
                              borderRadius: BorderRadius.circular(10.0).w
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            'ضبط استقبال الطلبات ',
                            style: GoogleFonts.notoKufiArabic(
                                fontSize: 18.0.sp,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),

                    SizedBox(
                      height: 20.0.h,
                    ),
                    Container(
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
                                'الباقة الاولي ',
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13.0.sp,
                                ),
                              ),
                              SizedBox(
                                width: 50.0.w,
                              ),
                              Text(
                                '15 ريال س ',
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15.0.sp,
                                ),
                              ),
                              const SizedBox(
                                width: 30.0,
                              ),
                              Directionality(
                                textDirection: TextDirection.ltr,
                                child: Transform.scale(
                                  scale: 1.4.r,
                                  child: CupertinoSwitch(
                                      activeColor: HexColor('008036'),
                                      trackColor: HexColor('ff1717'),
                                      value: widget.two,
                                      onChanged: onNomralchanged,
                                  ),
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
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Container(
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
                                'الباقة الثانية ',
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13.0.sp,
                                ),
                              ),
                              SizedBox(
                                width: 50.0.w,
                              ),
                              Text(
                                '20 ريال س ',
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15.0.sp,
                                ),
                              ),
                              const SizedBox(
                                width: 30.0,
                              ),
                              Directionality(
                                textDirection: TextDirection.ltr,
                                child: Transform.scale(
                                  scale: 1.4.r,
                                  child: CupertinoSwitch(
                                      activeColor: HexColor('008036'),
                                      trackColor: HexColor('ff1717'),
                                      value: widget.three,
                                      onChanged: onBronzechanged,
                                     // onChanged: (valuSilver) => setState(() =>this.valuSilver = valuSilver)
                                  ),
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
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Container(
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
                                'الباقة الثالثة ',
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13.0.sp,
                                ),
                              ),
                              SizedBox(
                                width: 50.0.w,
                              ),
                              Text(
                                '30 ريال س ',
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15.0.sp,
                                ),
                              ),
                              const SizedBox(
                                width: 30.0,
                              ),
                              Directionality(
                                textDirection: TextDirection.ltr,
                                child: Transform.scale(
                                  scale: 1.4.r,
                                  child: CupertinoSwitch(
                                      activeColor: HexColor('008036'),
                                      trackColor: HexColor('ff1717'),
                                      value: widget.four,
                                      onChanged: onGoldenchanged,
                                      //onChanged: (valueGold) => setState(() =>this.valueGold = valueGold)
                                  ),
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
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Container(
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
                                'الباقة الرابعه ',
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13.0.sp,
                                ),
                              ),
                              SizedBox(
                                width: 50.0.w,
                              ),
                              Text(
                                '40 ريال س ',
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15.0.sp,
                                ),
                              ),
                              const SizedBox(
                                width: 30.0,
                              ),
                              Directionality(
                                textDirection: TextDirection.ltr,
                                child: Transform.scale(
                                  scale: 1.4.r,
                                  child: CupertinoSwitch(
                                      activeColor: HexColor('008036'),
                                      trackColor: HexColor('ff1717'),
                                      value: widget.five,
                                      onChanged: onInstantchanged,
                                     // onChanged: (valueImmediate) => setState(() =>this.valueImmediate = valueImmediate)
                                  ),
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


  onNomralchanged(bool value) {

    String d = value.toString();
    SubmitServiceStatus(mo_ID, "normal", d);
    setState(() {
      widget.two=value;
    });
  }
  onBronzechanged(bool value) {

    String d = value.toString();
    SubmitServiceStatus(mo_ID, "bronze", d);
    setState(() {
      widget.three=value;
    });
  }
  onGoldenchanged(bool value) {

    String d = value.toString();
    SubmitServiceStatus(mo_ID, "golden", d);
    setState(() {
      widget.four=value;
    });
  }
  onInstantchanged(bool value) {

    String d = value.toString();
    SubmitServiceStatus(mo_ID, "instant", d);
    setState(() {
      widget.five=value;
    });
  }


}
