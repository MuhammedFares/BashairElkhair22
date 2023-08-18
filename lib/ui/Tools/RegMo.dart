import 'dart:async';
import 'dart:io';


import 'package:path_provider/path_provider.dart';

import '../../main.dart';
import '../Database/DB.dart';

class RegMo
{

  Future<String> get appPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }
  Future<bool>IsSus (String mo){
    print(sus(mo));
    return sus(mo);
  }
  Future<String> get idFile async {
    final path = await appPath;
    return '$path/MO.txt';
  }
  Future<bool> isIdFileRegistered() async {

    try {
      bool exist = await File(await idFile).exists();
      return exist;
    } on PathNotFoundException {
      return false;
    }
  }
  Future<String> get MOId async {
    try {
      if(await isIdFileRegistered())
      {
        String id = File(await idFile).readAsStringSync();
        if (id.isEmpty){
          return "MO file is empty";
          //delete file , rewrite
        }
        //here it'ok
        else {return id;}
      }
      else{ return "MO file is not exsit ";  }
    } on Exception catch (e) {

      print("Exception ${e.toString()}))");
      return "MO file is not exsit ";
    }
    // Goto Login Page , rewrite
  }
  //from login page
  Future<bool> WriteId(String? ID) async {
    try {
      final file = File(await idFile);
      await file.writeAsString(ID!);
      mo_ID =ID;
      return true;
    }
    catch(on){
      print("Write id method , MO file not exist" );
      return false;
    }
  }
  Future<void>Logout( ) async {
      try {
        final file = File(await idFile);
        await file.delete();
      } on Exception catch (e) {
        print(e.toString());
      }
  }


  //Normal : mo112 - ya133
  //Bronze : os102 - om092
  //golden : mf902 - ab163
  //Instant: ma164 - or062 - ig142

  List<String> Codes = ["mo112"
    ,"ya133","os102","om092"
    ,"mf902","ab163","ma164",
    "or062","ig142","An01005094704","eng150","you323","nour10","yos10","aziz35","ths1",'os001',"baksh1"];
//TODO : Take a note : you edideted this section.

  String imgpath = 'Assets/image/image';
  String Ext = '.png';


  String? MofaserImage(String moId)
  {
    if(moId == Codes[0])      {return 'Assets/image/mohamed.png';}
    else if(moId == Codes[1]) { return '${imgpath}2$Ext';}

    else if(moId == Codes[2]) { return '${imgpath}3$Ext';}
    else if(moId == Codes[3]) { return '${imgpath}4$Ext';}
    else if(moId == Codes[4]) { return '${imgpath}6$Ext';}
    else if(moId == Codes[5]) { return '${imgpath}1$Ext';}
    else if(moId == Codes[6]) { return 'Assets/image/malak.jpg';}

    else if(moId == Codes[7]) { return '${imgpath}5$Ext';}
    else if(moId == Codes[8]) { return 'Assets/image/ibrahem.png';}
    else if(moId == Codes[9]) { return 'Assets/image/logo.png';}
    else if(moId == Codes[10]) { return 'Assets/image/abdo.png';}
    else if(moId == Codes[11]) { return 'Assets/image/youssef.jpg';}
    else if(moId == Codes[12]) { return 'Assets/image/Nour.jpg';}
    else if(moId == Codes[13]) { return 'Assets/image/swelam.jpg';}
    else if(moId == Codes[14]) { return 'Assets/image/aziz.png';}
    else if(moId == Codes[15]) { return 'Assets/image/img.png';}
    else if(moId == Codes[16]) { return 'Assets/image/omyoussef.jpeg';}
    else if(moId == Codes[17]) { return 'Assets/image/osman.jpeg';}
    else {
      return moId;
    }

  }
}

