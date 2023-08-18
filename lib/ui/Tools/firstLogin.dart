import 'dart:async';

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';


class FirstLogin {
  Future<String> get appPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<String> get LoginFile async {
    final path = await appPath;
    return '$path/pattern.txt';
  }


  Future<bool> Exist() async {
   // return File(await LoginFile).existsSync();
    return true;
  }

  AssignFirstLogin()
  async {
    final file =  File(await LoginFile);
    await file.writeAsString("0");
    if (kDebugMode) {
      print("FirstLogin Counted");
      print(file.path);
    }
  }
}
