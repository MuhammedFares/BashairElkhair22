import 'package:bshair_elkher/ui/Database/DB.dart';
import 'package:bshair_elkher/ui/Notifications/onesignal_flutter.dart';
import 'package:bshair_elkher/ui/Tools/RegID.dart';
import 'package:bshair_elkher/ui/Tools/RegMo.dart';
import 'package:bshair_elkher/ui/Tools/firstLogin.dart';
import 'package:bshair_elkher/ui/VoiceCalls/Voice.dart';
import 'package:bshair_elkher/ui/instructions/instructions.dart';
import 'package:bshair_elkher/ui/profile/AdminPage.dart';
import 'package:bshair_elkher/ui/profile/Dprofile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'ui/login/login.dart';
import 'ui/who_us/who_us.dart';



late bool fileIsExist;
late bool MoFieExsit;

late bool LoggedInBefore;
late String CST_ID,mo_ID,mo_pho,tot,res,pa;
final List<String> Codes = ["mo112"
  ,"ya133","os102","om092"
  ,"mf902","ab163","ma164",
  "or062","ig142","ah150","eng150","you323","nour10","yos10","aziz35","ths1","os001","baksh1"];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  InitOneSignal();
 // await  voicecall().setupVoiceSDKEngine();

  fileIsExist =await FirstLogin().Exist();
  if(!fileIsExist){ await FirstLogin().AssignFirstLogin();}

  String cst =await RegID().CstId;

  if(cst == "Reg file is empty" || cst == "Reg file is not exsit ")
  {
    LoggedInBefore =false;
    String mo =await RegMo().MOId;
    mo_ID =mo;
    mo_pho = RegMo().MofaserImage(mo)!;
    List<String> balances = await GetMobalance();
    tot=balances[0];pa=balances[1];res=balances[2];

    MoFieExsit = Codes.contains(mo);

  }
  else {LoggedInBefore = true;}
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (fileIsExist) {
      if (LoggedInBefore) {
        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              //    home: Instructions(),
              home: Instructions(),
            );
          },
        );
      }
      else if (MoFieExsit && mo_ID != "An01005094704") {
        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: DProfile(hisphoto: mo_pho, HisId: mo_ID, total: tot, rest: res, paid: pa,),
            );
          },
        );
      }
      else if (MoFieExsit && mo_ID == "An01005094704") {
        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: AdminPage(),
            );
          },
        );
      }
      else {
        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: login(),
            );
          },
        );
      }
    }
    else {
      return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: WhoUs(),
          );
        },
      );
    }
  }
}

