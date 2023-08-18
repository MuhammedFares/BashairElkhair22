
import 'package:bshair_elkher/ui/ModernUi/Snack.dart';
import 'package:bshair_elkher/ui/instructions/instructions.dart';
import 'package:bshair_elkher/ui/Checker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Database/DB.dart';
import '../PhoneSignIn/PhoneUi.dart';
import '../Tools/RegMo.dart';
import '../profile/AdminPage.dart';
import '../profile/Dprofile.dart';
import 'loginTools.dart';


class login extends StatefulWidget {

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var Formkey = GlobalKey<FormState>();
late String MOID,hisphoto;
bool IsAdminLogin = false;
  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Form(
          key:Formkey ,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                Image.asset(
                  'Assets/image/darkback.png',
                  width: double.infinity,
                  height: 770.0.h,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60.0,top: 20.0).r,
                  child: Text(
                    '  بشائر الخير ',
                    style: GoogleFonts.notoKufiArabic(
                      fontSize: 40.0.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80.0,top: 95.0).r,
                  child: Text(
                    '\" يَا أَبَتِ هَٰذَا تَأْوِيلُ رُؤْيَايَ \"',
                    style: GoogleFonts.notoKufiArabic(
                        color: HexColor('FABC05'),
                        fontSize: 15.0.sp,
                      fontWeight:FontWeight.w600
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 39.0,top: 150.0).r,
                  child: Text(
                    "أسره بشائر الخير ترحب بكم ️",
                    style: GoogleFonts.notoKufiArabic(
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 210.0,left:50.0,right: 50.0,bottom: 20.0 ).r,
                  width: double.infinity,
                  height: 3.5,
                  color: HexColor('FABC05'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0,right: 40.0,top: 230.0).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' تسجيل دخول العميل ',
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 25.0.sp,
                          fontWeight: FontWeight.w600,

                        ),
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                     /* Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                       /*   InkWell(
                            onTap: () async{
                            //  await signInWithFacebook();
                              showSnackBar(context,"هاتفك ليس مدعوم ");
                            },
                            child: Image.asset(
                              'Assets/image/facebook.png',
                              width: 50.0.w,
                              height: 50.0.h,
                            ),
                          ),
                          SizedBox(
                            width: 40.0.w,
                          ),
                          InkWell(
                            onTap: () async{
                              if(await logintools().LogWithGoogle(context)){

                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const Instructions()));}
                              else {
                                showSnackBar(context, "حدث خطأ , يرجي التحقق من الاتصال بالانترنت");
                              }
                            },
                            child: Image.asset(
                              'Assets/image/google.png',
                              width: 50.0.w,
                              height: 50.0.h,
                            ),
                          ),
                          SizedBox(
                            width: 40.0.w,
                          ),
                          //Twitter
                          InkWell(
                            onTap: () async{
    Navigator.push(context, MaterialPageRoute(
    builder: (context) => const loginwithphoneno()));}
                              /*  if(await logintools().LogWithTwitter(context)){

                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const Instructions()));}
                            else {
                              showSnackBar(context, "حدث خطأ , يرجي التحقق من الاتصال بالانترنت");
                            }*/
                           //   showSnackBar(context,"الخدمة غير متاحة حالياً ");
                            ,
                            child: Image.asset(
                              'Assets/image/phone.png',
                              width: 55.0.w,
                              height: 55.0.h,
                            ),
                          ),
                          SizedBox(
                            width: 40.0.w,
                          ),*/
                        ],
                      ),*/
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0,right: 0.0,top: 0.0).r,
                        child:
                        InkWell(
                          onTap: () async {
                            if(await logintools().LogWithGoogle(context)){

                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const Instructions()));}
                            else {
                              showSnackBar(context, "حدث خطأ , يرجي التحقق من الاتصال بالانترنت");
                            }
                          },
                          child: Container(
                              padding: const EdgeInsets.only(top: 0.0,right: 0.0).r,
                              width: 270.0.w,
                              height: 40.0.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0).w,
                                color: Colors.redAccent.shade100,
                              ),
                              child:
                              Row(
                                children: [
                                  Text(
                                    textAlign: TextAlign.right,
                                    '   الدخول بالأيميل  ',
                                    style: GoogleFonts.notoKufiArabic(
                                      fontSize: 18.0.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 38.0.h,
                                  ),
                                  Image.asset(
                                    'Assets/image/google.png',
                                    width: 50.0.w,
                                    height: 50.0.h,
                                  ),
                                ],
                              )

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0,right: 0.0,top: 0.0).r,
                        child:
                        InkWell(
                          onTap: () async {
                              Navigator.push(context, MaterialPageRoute(
                                   builder: (context) => const loginwithphoneno()));
                          },
                          child: Container(
                              padding: const EdgeInsets.only(top: 0.0,right: 0.0).r,
                              width: 270.0.w,
                              height: 40.0.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0).w,
                                color: Colors.white,
                              ),
                              child:
                              Row(
                                children: [
                                  Text(
                                    textAlign: TextAlign.right,
                                    '   الدخول برقم الهاتف ',
                                    style: GoogleFonts.notoKufiArabic(
                                      fontSize: 18.0.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.0.h,
                                  ),
                                  Image.asset(
                                    'Assets/image/phone.png',
                                    width: 50.0.w,
                                    height: 50.0.h,
                                  ),
                                ],
                              )

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Container(
                        margin: const EdgeInsets.only( ).r,
                        width: 300,
                        height: 3.5,
                        color: HexColor('FABC05'),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80.0).r,
                    child:
                    Text(
                        'تواصل معنا',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ),
                 const     SizedBox(
                        height: 10,
                      ),
                      Padding(
                      padding: const EdgeInsets.only(left: 0.0,right: 0.0,top: 0.0).r,
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
                            if (kDebugMode) {
                              print(e.toString());
                            }
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 0.0,right: 0.0).r,
                          width: 270.0.w,
                          height: 45.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0).w,
                            color: HexColor('FABC05'),
                          ),
                          child:
                          Row(
                            children: [
                              Text(
                                ' التواصل مع ادارة التطبيق  ',
                                style: GoogleFonts.notoKufiArabic(
                                  fontSize: 15.0.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                width: 6.0.h,
                              ),
                              Image.asset(
                                'Assets/image/whatsapp.png',
                                width: 50.0.w,
                                height: 50.0.h,
                              ),
                            ],
                          )

                        ),
                      ),
                      ),


                      Container(
                        margin: const EdgeInsets.only(top: 25.0,left:50.0,right: 10.0,bottom: 20.0 ).r,
                        width: double.infinity,
                        height: 3.5,
                        color: HexColor('FABC05'),
                      ),
                      Text(
                        'تسجيل دخول المفسرين فقط',
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0,bottom: 20.0,top: 10.0).r,
                        child: Text(
                          '     من فضلك ادخل كود المفسر ',
                          style: GoogleFonts.notoKufiArabic(
                            color: HexColor('FABC05'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0.sp
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0,right: 20.0).r,
                        child: TextFormField(
                          cursorColor: Colors.white,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                            ),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: HexColor('B08607'),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10).w,
                                borderSide: BorderSide(
                                  color: HexColor('B08607'),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10).w,
                                borderSide: BorderSide(
                                  color: HexColor('B08607'),
                                ),
                              ),
                              errorBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10).w,
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              focusedErrorBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10).w,
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(left: 10).r,
                            ),
                            onChanged: (String value){},
                            validator: (value)
                            {
                              if(value?.isEmpty ?? true )
                              {
                                return 'كود المفسر غير موجود' ;
                              }
                              else if (RegMo().Codes.contains(value))
                              {
                                if(value == "An01005094704") {
                                  print("admin login");
                                  MOID = value!;
                                  hisphoto = RegMo().MofaserImage(MOID)!;
                                  if (value.isNotEmpty) {
                                    RegMo().WriteId(MOID);
                                    IsAdminLogin = true;
                                  }
                                }
                                else {
                                  print("normal login");
                                  MOID = value!;
                                  hisphoto = RegMo().MofaserImage(MOID)!;
                                  if (value.isNotEmpty) {
                                    RegMo().WriteId(MOID);

                                  }
                                }
                              }
                              else{
                                return 'كود المفسر غير موجود' ;
                              }
                              return null ;
                            }
                        ),
                      ),
                      SizedBox(
                        height: 25.0.h,
                      ),
                      Container(
                        width: double.infinity,
                        height: 40.0.h,
                        margin: const EdgeInsets.only(left: 70.0 ,right: 50.0).r,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8.0).w,

                        ),
                        child: MaterialButton(
                          onPressed: () async {
                            if (await hasNetwork() ) {
                              if(Formkey.currentState!.validate())
                              {
                                var s = await RegMo().IsSus(MOID);
                                if(RegMo().Codes.contains(MOID) && !IsAdminLogin && !s) {
                                  print("normal mofasser login");
                                 // await AssignMofasserFirstLogin();

                                  var tot , pa , res;
                                  List<String> balances = await GetMobalance();
                                  tot=balances[0];pa=balances[1];res=balances[2];

                                  // ignore: use_build_context_synchronously
                                  Navigator.push(
                                      context, MaterialPageRoute(builder:
                                      (context) =>
                                      DProfile(HisId: MOID,
                                        hisphoto: RegMo().MofaserImage(
                                            MOID), total:tot, rest: res, paid: pa,)));
                                }
                                else if (RegMo().Codes.contains(MOID) && IsAdminLogin)
                                {     print("admin login");
                                  Navigator.push(
                                      context, MaterialPageRoute(builder:
                                      (context) => const AdminPage(),));
                                }
                                else{
                                  showSnackBar(context,"نأسف تم تعليق حسابك");

                                }


                              }
                            }
                            else
                              {
                                showSnackBar(context,"يرجي الاتصال بالانترنت");
                              }
                          },
                          child:Text(
                            'دخول',
                            style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w600
                            ),
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
    ),
    );
  }
}

