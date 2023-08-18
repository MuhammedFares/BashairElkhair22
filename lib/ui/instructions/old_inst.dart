/*import 'package:bshair_elkher/ui/PublicDreams/PublicDreamList.dart';
import 'package:bshair_elkher/ui/choice_commentator/choice_commentator.dart';
import 'package:bshair_elkher/ui/instructions/instructions_screen.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:bshair_elkher/ui/packages/package.dart';
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
import '../my_dream/dream_screen.dart';



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
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>WhoUs()));

            }
          } ,
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(
            children: [
              Image.asset(
                'Assets/image/darkback.png',
                width: double.infinity,
                height: 700.0.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0).r,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40.0.h,
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>InstructionsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 15.0).r,
                          width: double.infinity,
                          height: 80.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0).w,
                            color: HexColor('FABC05'),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            'ارشادات التطبيق ',
                            style: GoogleFonts.notoKufiArabic(
                              fontSize: 25.0.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: ()  {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DreamScreen()));
                            },
                            child: Container(
                              width: 150.0.w,
                              height: 60.0.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80.0).w,
                                color: HexColor('1b9ef0'),
                              ),
                              child: Text(
                                textAlign: TextAlign.center,
                                'احلامى ',
                                style: GoogleFonts.notoKufiArabic(
                                  color: Colors.white,
                                  fontSize: 28.0.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30.0.w,
                          ),
                          InkWell(
                            onTap: () async {

                              var x = await StoredPublicDreams();

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PubDreamsList(x)));

                            },
                            child: Container(
                              width: 150.0.w,
                              height: 60.0.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80.0).w,
                                color: HexColor('008036'),
                              ),
                              child: Text(
                                textAlign: TextAlign.center,
                                'احلام عامة ',
                                style: GoogleFonts.notoKufiArabic(
                                  color: Colors.white,
                                  fontSize: 28.0.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0.h,
                      ),
                      InkWell(
                        onTap: (){



                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChoiceCommentator()));
                        },
                        child: Container(
                          width: 220.0.w,
                          height: 60.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0).w,
                            color: HexColor('1b9ef0'),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            'المفسرون ',
                            style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 28.0.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0.h,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Packages()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 15.0,right: 15.0),
                          width: double.infinity,
                          height: 60.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0).w,
                            color: HexColor('1b9ef0'),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            'خدمات التطبيق  ',
                            style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 28.0.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0.h,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Packages2()));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 10.0).r,
                          width: double.infinity,
                          height: 80.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0).w,
                            color: HexColor('FABC05'),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            'طلب تفسير حلمي  ',
                            style: GoogleFonts.notoKufiArabic(
                              fontSize: 28.0.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0.h,
                      ),
                      // red c5302c
                      // nn 8c52ff

                      Row(
                        children: [
                          /*  InkWell(
                           onTap:() async{
                             RegID().Logout();
                           },
                           child: CircleAvatar(
                             backgroundColor: HexColor('c5302c') ,
                             radius: 50.0.w,
                             child: Column(
                               children: [
                                 SizedBox(
                                   height: 10.0.h,
                                 ),
                                 Image.asset(
                                   'Assets/image/bigexit0.png',
                                   width: 30.0.w,
                                   height: 30.0.h,
                                 ),
                                 Text(
                                   'تسجيل ',
                                   style: GoogleFonts.notoKufiArabic(
                                     color: Colors.white,
                                     fontSize: 12.0.sp,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                                 Text(
                                   'الخروج',
                                   style: GoogleFonts.notoKufiArabic(
                                     color: Colors.white,
                                     fontSize: 12.0.sp,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),*/
                          SizedBox(
                            width: 55.0.w,
                          ),
                          InkWell(
                            onTap:() async{
                              const url = 'https://wa.me/message/JGTIEOCFU5NKD1';

                              // ignore: deprecated_member_use
                              if (await  canLaunch(url)){
                                // ignore: deprecated_member_use
                                await launch(
                                  url,
                                  forceSafariVC: true, //For IOS
                                );
                              }
                            },
                            child: CircleAvatar(
                              backgroundColor: HexColor('1b9ef0') ,
                              // backgroundColor: HexColor('8c52ff') ,

                              radius: 50.0.w,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10.0.h,
                                  ),
                                  Image.asset(
                                    'Assets/image/whatsapp.png',
                                    width: 32.0.w,
                                    height: 32.0.h,
                                  ),
                                  Text(
                                    'خدمه ',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'العملاء',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 12.0.sp,
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
                            onTap:() async{
                              const url = 'https://play.google.com/store/apps/details?id=com.Moka.bshair_elkher';
                              const tex = "حمل تطبيق بشائر الخير لتفسير الاحلام وفسر حلمك بكل سهوله مع نخبه من المشاهير المتخصصين من انحاء الوطن العربي في تفسير الاحلام  ";
                              Share.share(tex +"\n"+ url);


                            },
                            child: CircleAvatar(
                              backgroundColor: HexColor('8c52ff') ,
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
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'التطبيق',
                                    style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 12.0.sp,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/