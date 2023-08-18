
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bshair_elkher/main.dart';
import 'package:bshair_elkher/ui/Database/DB.dart';
import 'package:bshair_elkher/ui/Tools/time.dart';
import 'package:bshair_elkher/ui/login/login.dart';
import 'package:flutter/foundation.dart';
import 'package:share_plus/share_plus.dart';

import '../Database/Dream.dart';
import '../ModernUi/SendNot.dart';
import '../Notifications/onesignal_flutter.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:bshair_elkher/ui/receiving_request/receiving_requests.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../ModernUi/Snack.dart';


import '../Tools/RegMo.dart';
import '../instructions/prog.dart';
import '../my_dream_commentator/dream_commentator_finished.dart';
import '../my_dream_commentator/dream_commentator_inprogress.dart';
import '../my_dream_commentator/dream_commentator_screen.dart';


class DProfile extends StatelessWidget {
  final String? hisphoto;
  final String HisId;
  final String total;
  final String rest;
  final String paid;


   const DProfile({
    Key? key,
    required this.hisphoto,
    required this.HisId,
     required this.total,
     required this.rest,
     required this.paid,
  }) : super(key: key);



  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await AddExternalUser(HisId);
    });

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        bottomNavigationBar: bottomNavBarCommentator(
          onTap: (index) {
            if (index == 3) {
              Navigator.pop(context);
            }
            if (index == 1) {
              const url = ' https://play.google.com/store/apps/details?id=com.Moka.bshair_elkher ';
              const tex = "حمل تطبيق بشائر الخير لتفسير الاحلام وفسر حلمك بكل سهوله مع نخبه من المشاهير المتخصصين من انحاء الوطن العربي في تفسير الاحلام";
              Share.share(tex + url);

            }
          },
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
                  height: 655.0.h,
                  fit: BoxFit.cover,
                ),

                //logo and person
                Padding(
                  padding: const EdgeInsets.only(top:40,right: 60.0).r,
                  child: Container(
                    width: 260,
                    height: 3.5,
                    color: HexColor('FABC05'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:50,right: 5.0).r,
                  child:CircleAvatar(
                    backgroundImage: AssetImage(
                      hisphoto!,
                    ),
                    radius: 50.0.w,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:60,right: 120).r,
                  child:   Text(
                   castMo(HisId),
                    style: GoogleFonts.notoKufiArabic(
                      color: Colors.white,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
              padding: const EdgeInsets.only(top:99,right: 100).r,
              child:  ModernStar(),
            ),
                Padding(
                  padding: const EdgeInsets.only(top:160,right: 60.0).r,
                  child: Container(
                    width: 260,
                    height: 3.5,
                    color: HexColor('FABC05'),
                  ),
                ),

                //DreamSection
                Padding(
                  padding: const EdgeInsets.only(top:170,right: 5.0).r,
                  child:CircleAvatar(
                    backgroundImage: const AssetImage(
                    "Assets/image/logo.png"
                    ),
                    radius: 50.0.w,
                  ),
                ),
                Padding(
              padding: const EdgeInsets.only(top:180,right: 0.0).r,
              child: InkWell(
                  onTap: () async {
                    var x = await MoNotfinished();
                    var y = x.length.toString();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>DreamsCommentatorInProgress(x,y)));
                  },
                  child: Container(
                    margin: const EdgeInsets
                        .only(left: 20.0, right: 110.0)
                        .r,
                    width: double.infinity,
                    height:40.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius
                          .circular(10.0)
                          .w,

                      border: Border.all(
                        width: 1,
                        color: Colors.yellow,
                      ),
                      color: HexColor('#0f2d6b'),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      "احلام قيد التفسير",
                      style: GoogleFonts.notoKufiArabic(
                        color: HexColor("e9df6d"),
                        fontSize: 20.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ),
                Padding(
                  padding: const EdgeInsets.only(top:230,right: 0.0).r,
                  child: InkWell(
                    onTap: () async {
                      var x = await Mofinisheddreams();
                      var y = x.length.toString();
                      Navigator.push(context,

                          MaterialPageRoute(builder: (context)=>DreamsCommentatorFinished(x,y)));
                    },
                    child: Container(
                      margin: const EdgeInsets
                          .only(left: 20.0, right: 110.0)
                          .r,
                      width: double.infinity,
                      height:40.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius
                            .circular(10.0)
                            .w,

                        border: Border.all(
                          width: 1,
                          color: Colors.yellow,
                        ),
                        color: HexColor('#0f2d6b'),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        "احلام تم تفسيرها",
                        style: GoogleFonts.notoKufiArabic(
                          color: HexColor("e9df6d"),
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                //Notification
                Padding(
                  padding: const EdgeInsets.only(top:290,right: 70.0).r,
                  child: Container(
                    width: 260,
                    height: 3.5,
                    color: HexColor('FABC05'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:304,right: 0.0).r,
                  child:CircleAvatar(
                    backgroundColor: Colors.white,

                    radius: 51.0.w,
                    child: const Icon(
                      Icons.notifications,
                      size: 98,
                    ),
                  ),),
                Padding(
                  padding: const EdgeInsets.only(top:305,right: 1.0).r,
                  child:CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: const AssetImage(
                      'Assets/image/darkback.png',
                    ),
                    radius: 50.0.w,
                    child: const Icon(
                       Icons.notifications,
                      size: 100,
                    ),
                  ),),
                Padding(
              padding: const EdgeInsets.only(top:310,right: 10.0).r,
              child:    InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SendNot(mo_ID)));
                  },
                  child: Container(
                    margin: const EdgeInsets
                        .only(top:0, left: 20.0,right: 101)
                        .r,
                    width: double.infinity-40,
                    height: 40.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius
                          .circular(10.0)
                          .w,
                      border: Border.all(
                        width: 1,
                        color: Colors.yellow,
                      ),
                      color: HexColor("0e2c6a"),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      'ارسال اشعار بالتواجد ',
                      style: GoogleFonts.notoKufiArabic(
                        color: Colors.white,
                        fontSize: 20.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ),
                Padding(
                  padding: const EdgeInsets.only(top:365,right: 100.0).r,
                  child:    InkWell(
                    onTap: () async {
                      final stopwatch = Stopwatch();
                      stopwatch.start();
                      bool normal,bronze,golden,instant;

                      normal = await servicestate(HisId,"normal");
                      bronze = await servicestate(HisId,"bronze");
                      golden = await servicestate(HisId,"golden");
                      instant= await servicestate(HisId,"instant");
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ReceivingRequests(false,normal,bronze,golden,instant)));
                      stopwatch.stop();

                      print(stopwatch.elapsed.inMilliseconds.toString());
                    },
                    child: Container(
                      margin: const EdgeInsets
                          .only(top:0, left: 20.0,right: 10)
                          .r,
                      width: double.infinity-40,
                      height: 40.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius
                            .circular(10.0)
                            .w,
                        border: Border.all(
                          width: 1,
                          color: Colors.yellow,
                        ),
                        color: HexColor("0e2c6a"),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        'ضبط استقبال الطلبات ',
                        style: GoogleFonts.notoKufiArabic(
                          color:Colors.white,
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:420,right: 70.0).r,
                  child: Container(
                    width: 260,
                    height: 3.5,
                    color: HexColor('FABC05'),
                  ),
                ),

                //user
                Padding(
                  padding: const EdgeInsets.only(top:290,right: 70.0).r,
                  child: Container(
                    width: 260,
                    height: 3.5,
                    color: HexColor('FABC05'),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top:520,right: 30.0).r,
                  child:    InkWell(
                    onTap: () async {
                      print("object");
                      LoadingIndicatorDialog().show(context,"جار تحديث البيانات");

                      var tot , pa , res;
                      List<String> balances = await GetMobalance();
                      tot=balances[0];pa=balances[1];res=balances[2];
                      LoadingIndicatorDialog().dismiss();


                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          DProfile(HisId: this.HisId,
                            hisphoto: RegMo().MofaserImage(
                                HisId), total: tot
                            , rest: res, paid: pa,)));
                      showSnackBar(context, "تم تحديث البيانات");
                    },
                    child: Container(

                      width:300.0.h,
                      height: 40.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius
                            .circular(10.0)
                            .w,
                        border: Border.all(
                          width: 1,
                          color: Colors.yellow,
                        ),
                        color: HexColor("0e2c6a"),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        ' نحديث بيانات التطبيق ',
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:570,right: 30.0).r,
                  child:    InkWell(
                    onTap: () async {

                     await RegMo().Logout();
                     Navigator.push(context, MaterialPageRoute(
                         builder: (context) => login()));

                    },
                    child: Container(

                      width:300.0.h,
                      height: 40.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius
                            .circular(10.0)
                            .w,
                        border: Border.all(
                          width: 1,
                          color: Colors.yellow,
                        ),
                        color: HexColor("0e2c6a"),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        'تسجيل الخروج ',
                        style: GoogleFonts.notoKufiArabic(
                          color:Colors.white,
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:420,right: 70.0).r,
                  child: Container(
                    width: 260,
                    height: 3.5,
                    color: HexColor('FABC05'),
                  ),
                ),



                //money
              Padding(
                  padding: const EdgeInsets.only(top:425,right: 40.0).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'الاجمالى ',
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 18.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 30.0.w,
                      ),
                      Text(
                        'تم سداده',
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 18.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 20.0.w,
                      ),
                      Text(
                        '   المتبقي',
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 18.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:465,right: 40.0).r,
              child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70.0.w,
                      height: 35.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius
                            .circular(10.0)
                            .w,
                        border: Border.all(
                          width: 3,
                          color: Colors.green,
                        ),
                        color: HexColor("0e2c6a"),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        total,
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w600,

                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40.0.w,
                    ),
                    Container(
                      width: 70.0.w,
                      height: 35.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius
                            .circular(10.0)
                            .w,
                        border: Border.all(
                          width: 3,
                          color: Colors.red,
                        ),
                        color: HexColor("0e2c6a"),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        paid,
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 45.0.w,
                    ),
                    Container(
                      width: 70.0.w,
                      height: 35.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius
                            .circular(10.0)
                            .w,
                          border: Border.all(
                            width: 3,
                            color: Colors.yellow,
                          ),
                          color: HexColor("0e2c6a"),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        rest,
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w600,

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
      ),
    );
  }
}



String castMo(String mo) {
  if (mo == 'mo112') {
    return "المفسر/ محمد المباشر";
  }
  else if (mo == 'ya133') {
    return "المفسر/ ابو يحي الاشرم";
  }
  else if (mo == 'os102') {
    return "الشيخ/ أسامة قنديل";
  }
  else if (mo == 'om092') {
    return "المفسرة/ امنيه احمد";
  }
  else if (mo == 'mf902') {
    return "المفسر/ محمود فكري";
  }
  else if (mo == 'ab163') {
    return "المفسر/ عبدالرحمن الاحمري";
  }
  else if (mo == 'ma164') {
    return "المفسرة/ ملاك تفسيرالاحلام";
  }
  else if (mo == 'or062') {
    return "المفسرة/ ام ريان";
  }
  else if (mo == 'ig142') {
    return "الدكتور/ ابراهيم الجنابي";
  }
  else if (mo == 'eng150') {
    return "المفسر/ عبدالستار حشمت";
  }
  else if (mo == 'you323') {
    return "الدكتور/ يوسف الحارثي";
  }
  else if (mo == 'nour10') {
    return "الدكتوره/ نور الهدي الجمال";
  }
  else if (mo == 'yos10') {
    return "المفسر/ يوسف السويلم";
  }
  else if (mo == 'aziz35') {
    return "المفسر/ ابو عزيز";
  }
  else if (mo == 'ths1') {
    return "المفسرة/ ثويبة صابر";
  }
  else if (mo == 'os001') {
    return "المفسره/ عواطف ام يوسف";
  }
  else if (mo == 'baksh1') {
    return "المفسر/ عثمان محمد بخش";
  }
  else {
    return " لم يظهر المفسر";
  }
}
