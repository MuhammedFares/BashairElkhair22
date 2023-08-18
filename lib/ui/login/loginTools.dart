
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Checker.dart';
import '../Database/DB.dart';
import '../ModernUi/Snack.dart';
import '../Tools/RegID.dart';
import '../authentication.dart';
import '../instructions/instructions.dart';

enum dreamtype
{
  normal,
  bronze,
  golden,
  instant

}
class logintools {


  /*Future<bool> LogWithTwitter(BuildContext context) async {
    bool network, write,db;
    String? Uid;

    network = await hasNetwork();

    if(!network) { showSnackBar(context, "حدث خطأ , يرجي التحقق من الاتصال بالانترنت"); return false;}

    Uid = (await signInWithTwitter()).user?.uid;
    write = await RegID().WriteId(Uid);
    await AssignFirstLogin();

    if (!network || Uid?.isEmpty == null || !write) {

      return false;
    }

    else {
       return true;
    }

  }*/
  Future<bool> LogWithGoogle(BuildContext context) async {
    bool network, write,db;
    String? Uid;

    network = await hasNetwork();

    if(!network) { showSnackBar(context, "حدث خطأ , يرجي التحقق من الاتصال بالانترنت"); return false;}

    Uid = (await signInWithGoogle()).user?.uid;
    write = await RegID().WriteId(Uid);
    await AssignFirstLogin();

    if (!network || Uid?.isEmpty == null || !write) {

      return false;
    }

    else {
      return true;
    }

  }

}