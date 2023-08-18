import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../information/information_screen1.dart';

void showSnackBar(BuildContext context,String tex) {
  final snackBar = SnackBar(
    content:Text(
      tex,
      style: GoogleFonts.notoKufiArabic(
          color: Colors.white,
          fontSize: 17.0.sp,
          fontWeight: FontWeight.w600
      ),
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.teal,
    behavior: SnackBarBehavior.floating,
    duration:const Duration(milliseconds: 3000),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomDreamId(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

