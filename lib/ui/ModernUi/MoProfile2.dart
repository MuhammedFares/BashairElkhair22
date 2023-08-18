
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bshair_elkher/main.dart';
import 'package:bshair_elkher/ui/Database/DB.dart';
import 'package:flutter/foundation.dart';
import 'package:share_plus/share_plus.dart';

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
              if (kDebugMode) {
                print(HisId);
              }
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
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 15.0).r,
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
                      backgroundImage: AssetImage(
                        hisphoto!,
                      ),
                      radius: 80.0.w,
                    ),

                    SizedBox(
                      height: 20.0.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'الاجمالى ',
                            style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 60.0.w,
                          ),
                          Text(
                            'تم سداده',
                            style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 50.0.w,
                          ),
                          Text(
                            '   المتبقي',
                            style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Yewllo fcba0e
                    // green 027f33
                    // red ff5654
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 80.0.w,
                          height: 25.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius
                                .circular(10.0)
                                .w,
                            color: HexColor('fcba0e'),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            total,
                            style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 13.0.sp,

                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50.0.w,
                        ),
                        Container(
                          width: 85.0.w,
                          height: 25.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius
                                .circular(10.0)
                                .w,
                            color: HexColor('027f33'),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            paid,
                            style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 13.0.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40.0.w,
                        ),
                        Container(
                          width: 80.0.w,
                          height: 25.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius
                                .circular(10.0)
                                .w,
                            color: HexColor('ff5654'),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            rest,
                            style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 13.0.sp,

                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250.0).r,
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
                    ModernStar(),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => DreamCommentatorScreen()));
                      },
                      child: Container(
                        margin: const EdgeInsets
                            .only(left: 50.0, right: 50.0)
                            .r,
                        width: double.infinity,
                        height: 70.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius
                              .circular(30.0)
                              .w,
                          color: HexColor('1b9ef0'),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          'احلامى ',
                          style: GoogleFonts.notoKufiArabic(
                            color: Colors.white,
                            fontSize: 30.0.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    InkWell(
                      onTap: () async  {
                        // showSnackBar(context, "تم ارسال اشعار بالتواجد");
                        //  await SendGlobalNotification(castMo(mo_ID),"انا متواجد لمدة ساعة ان شاء الله");

                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SendNot(mo_ID)));
                      },
                      child: Container(
                        margin:const EdgeInsets.only(left: 50.0, right: 50.0).r,
                        width: double.infinity,
                        height: 50.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius
                              .circular(30.0)
                              .w,
                          color: HexColor('027f33'),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          'ارسال اشعار بالتواجد',
                          style: GoogleFonts.notoKufiArabic(
                            color: Colors.white,
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20.0.h,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
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
                          child: CircleAvatar(
                            backgroundColor: Colors.indigo,
                            radius: 50.0.w,
                            child: Column(
                              children: [
                                Image.asset(
                                  'Assets/image/reload.png',
                                  color: Colors.white,
                                  width: 35.0.w,
                                  height: 40.0.h,
                                ),
                                Text(
                                  '  تحديث  ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 13.0.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'البيانات',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 13.0.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0.w,
                        ),

                        InkWell(
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
                          child: CircleAvatar(
                            backgroundColor: HexColor('1b9ef0'),
                            radius: 50.0.w,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10.0.h,
                                ),
                                Text(
                                  ' ضبط ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 13.0.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  ' استقبال  ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 13.0.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'الطلبات',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 13.0.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0.w,
                        ),
                        InkWell(
                          onTap: () async {
                            const url = ' https://play.google.com/store/apps/details?id=com.Moka.bshair_elkher ';
                            const tex = "حمل تطبيق بشائر الخير لتفسير الاحلام وفسر حلمك بكل سهوله مع نخبه من المشاهير المتخصصين من انحاء الوطن العربي في تفسير الاحلام";
                            Share.share(tex + url);


                          },
                          child: CircleAvatar(
                            backgroundColor: HexColor('8c52ff'),
                            radius: 50.0.w,
                            child: Column(
                              children: [

                                Image.asset(
                                  'Assets/image/arrow.png',
                                  color: Colors.white,
                                  width: 40.0.w,
                                  height: 40.0.h,
                                ),
                                Text(
                                  'شارك  ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 13.0.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'التطبيق',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 13.0.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
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
