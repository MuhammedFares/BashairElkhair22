
import 'package:bshair_elkher/ui/PublicDreams/PublicDreamList.dart';
import 'package:bshair_elkher/ui/Tools/RegID.dart';
import 'package:bshair_elkher/ui/VoiceCalls/Voice.dart';
import 'package:bshair_elkher/ui/choice_commentator/choice_commentator.dart';
import 'package:bshair_elkher/ui/instructions/prog.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:bshair_elkher/ui/packages/package2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';


import '../Database/DB.dart';
import '../Notifications/onesignal_flutter.dart';
import '../login/login.dart';
import '../my_dream/dream_screen.dart';
import '../who_us/who_us.dart';



class Instructions extends StatefulWidget {
  const Instructions({super.key});


  @override
  State<Instructions> createState() => _InstructionsState();

}
late String cst_id;
class _InstructionsState extends State<Instructions> {
  Future<bool> _onWillPop() async {
   await AddExternalUser(FirebaseAuth.instance.currentUser?.uid);

    return false; //<-- SEE HERE
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await AddExternalUser(FirebaseAuth.instance.currentUser?.uid);
    });

    return  WillPopScope(
        onWillPop: _onWillPop,
        child :Scaffold(

      bottomNavigationBar: bottomNavBar(
        onTap: (index) {
          if (index == 1) {
            const url = ' https://play.google.com/store/apps/details?id=com.Moka.bshair_elkher ';
            const tex = "حمل تطبيق بشائر الخير لتفسير الاحلام وفسر حلمك بكل سهوله مع نخبه من المشاهير المتخصصين من انحاء الوطن العربي في تفسير الاحلام";
            Share.share(tex + url);
          }
        if(index==3) {
          Navigator.pop(context);
         // Navigator.push(context, MaterialPageRoute(builder: (context)=>WhoUs()));
        }
        } ,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [

            //background
            Image.asset(
              'Assets/image/background.jpeg',
              width: double.infinity,
              height: 700.0.h,
              fit: BoxFit.cover,
            ),

            // Mofaseren - Khadamt
            Padding(
              padding: const EdgeInsets.only(top:40,right: 60.0).r,
              child: Container(
                width: 260,
                height: 3.5,
                color: HexColor('FABC05'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:60,right: 5.0).r,
              child:CircleAvatar(
                backgroundImage: const AssetImage(
                  "Assets/image/logo.png",
                ),
                radius: 50.0.w,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:60,right: 50).r,
              child:
             InkWell(
                  onTap: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChoiceCommentator()));
                  },
                  child: Container(
                    margin: const EdgeInsets
                        .only(left: 30.0, right: 70.0)
                        .r,
                    width: double.infinity,
                    height:45.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius
                          .circular(10.0)
                          .w,

                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      color: HexColor('#0f2d6b'),
                    ),
                    child:Center( child: Text(
                      textAlign: TextAlign.center,
                         "مفسرين التطبيق",
                      style: GoogleFonts.notoKufiArabic(
                        color: Colors.white,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top:115   ,right: 50).r,
              child:
              InkWell(
                onTap: () async {
                  var x = await StoredPublicDreams();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PubDreamsList(x)));
                },
                child: Container(
                  margin: const EdgeInsets
                      .only(left: 30.0, right: 70.0)
                      .r,
                  width: double.infinity,
                  height:50.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius
                        .circular(10.0)
                        .w,

                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                    color: HexColor('#0f2d6b'),
                  ),
                  child:
                  Center(child:Text(
                    textAlign: TextAlign.center,
                    "احلام عامة داخل التطبيق",
                    style: GoogleFonts.notoKufiArabic(
                      color: Colors.white,
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:180,right: 60.0).r,
              child: Container(
                width: 260,
                height: 3.5,
                color: HexColor('FABC05'),
              ),
            ),

            // Dreams Section
            Padding(
              padding: const EdgeInsets.only(top:200,right: 5.0).r,
              child:CircleAvatar(
                backgroundImage: const AssetImage(
                  "Assets/image/dreamlog.png",
                ),
                radius: 48.0.w,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:215,right: 50).r,
              child:
              InkWell(
                onTap: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DreamScreen()));

                },
                child: Container(
                  margin: const EdgeInsets
                      .only(left: 30.0, right: 70.0)
                      .r,
                  width: double.infinity,
                  height:60.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius
                        .circular(10.0)
                        .w,

                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                    color: HexColor('#0f2d6b'),
                  ),
                  child:
                  Center(child: Text(
                    textAlign: TextAlign.center,
                    "احلامي",
                    style: GoogleFonts.notoKufiArabic(
                      color:Colors.white,
                      fontSize: 25.0.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:310,right: 60.0).r,
              child: Container(
                width: 260,
                height: 3.5,
                color: HexColor('FABC05'),
              ),
            ),



            //Who us and Talab tafseer
            Padding(
              padding: const EdgeInsets.only(top:330,right: 5.0).r,
              child: InkWell(
                onTap:() async{
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WhoUs()));

                },
                child: CircleAvatar(
                  backgroundImage: const AssetImage(
                    "Assets/image/Whous.png",
                  ),
                  // backgroundColor: HexColor('8c52ff') ,

                  radius: 50.0.w,
                ),
              ),
              ),
            Padding(
              padding: const EdgeInsets.only(top:350,right: 120).r,
              child:
              InkWell(
                onTap: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Packages2()));
                },
                child: Container(
                  margin: const EdgeInsets
                      .only(left: 0.0, right: 0.0)
                      .r,
                  width: 230,
                  height:70.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius
                        .circular(10.0)
                        .w,

                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                    color: HexColor('#0f2d6b'),
                  ),

                  child: Center(
                    child: Text(
                    textAlign: TextAlign.center,
                    "طلب تفسير حلمي",
                    style: GoogleFonts.notoKufiArabic(
                      color: Colors.white,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:450,right: 60.0).r,
              child: Container(
                width: 260,
                height: 3.5,
                color: HexColor('FABC05'),
              ),
            ),


            //Contact us  and logout
            Padding(
              padding: const EdgeInsets.only(top:480,right: 0).r,
              child:
              InkWell(
                onTap: () async {
                  const url = 'https://wa.me/message/JGTIEOCFU5NKD1';

                    try {
                      await launch(
                        url,
                        forceSafariVC: true, //For IOS
                      );
                    } on Exception catch (e) {
                      print("${e.toString()}");
                    }

                },
                child: Container(
                  margin: const EdgeInsets
                      .only(left: 30.0, right: 20.0)
                      .r,
                  width: double.infinity,
                  height:70.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius
                        .circular(10.0)
                        .w,

                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                    color: HexColor('#0f2d6b'),
                  ),

                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "التواصل مع ادارة التطبيق",
                      style: GoogleFonts.notoKufiArabic(
                        color: Colors.white,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:560,right: 0).r,
              child:
              InkWell(
                onTap: () async {
                  LoadingIndicatorDialog().show(context, "جاري تسجيل الخروج");
                 await RegID().Logout();
                  LoadingIndicatorDialog().dismiss();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                },
                child: Container(
                  margin: const EdgeInsets
                      .only(left: 30.0, right: 20.0)
                      .r,
                  width: double.infinity,
                  height:50.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius
                        .circular(10.0)
                        .w,

                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                    color: HexColor('#0f2d6b'),
                  ),

                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "تسجيل الخروج",
                      style: GoogleFonts.notoKufiArabic(
                        color: Colors.white,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    ),
    );
  }
}
