import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class NiceButton extends StatelessWidget {
  const NiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 7.0,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      child: InkWell(
        onTap: () {},
        child: Ink(
          decoration: BoxDecoration(
          //  gradient: LinearGradient(colors: [Colors.blue, Colors.blue]),
            borderRadius: BorderRadius.all(Radius.circular(50.0).w),
          ),
          width: double.infinity,
          height: 90.0.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(width: 48),
              Expanded(
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'شحن رصيدي ',
                    style: GoogleFonts.notoKufiArabic(
                      fontSize: 28.0.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                  ),
                ),
              ),
              ),
              SizedBox(
                width: 48.0,
                child: Icon(
                  Icons.account_balance_rounded,
                  color:Colors.blue,
                  size: 23.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}