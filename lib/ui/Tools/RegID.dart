import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

import '../../main.dart';
import '../Database/DB.dart';
import '../login/login.dart';

class RegID
{

  Future<String> get appPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }
  Future<String> get idFile async {
    final path = await appPath;
    return '$path/ID.txt';
  }
  Future<bool> isIdFileRegistered() async {

    try {
      bool exist = await File(await idFile).exists();
         return exist;
    } on PathNotFoundException {
      return false;
    }
  }
  Future<String> get CstId async {
    try {
      if(await isIdFileRegistered())
      {
        String id = File(await idFile).readAsStringSync();
        if (id.isEmpty){
          return "Reg file is empty";
          //delete file , rewrite
         }
        //here it'ok
        else {return id;}
      }
        else{ return "Reg file is not exsit ";  }
    } on Exception catch (e) {
      return "Reg file is not exsit ";
    }
      // Goto Login Page , rewrite
  }

  //from login page
  Future<bool> WriteId(String? ID) async {
    try {
      final file = File(await idFile);
      await file.writeAsString(ID!);

      return true;
    }
    catch(on){
      print("Write id method , file not exist" );
      return false;
    }
  }

  Future<bool>Logout( ) async {
    try {
     final file = File(await idFile);
      file.deleteSync();
      return true;
    }
    catch(on){
      SystemNavigator.pop();
      return false;
    }

  }
}