
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../DreamsScreen/DoneDreams.dart';
import '../Tools/RegMo.dart';
import '../profile/Dprofile.dart';


class DreamsCommentatorInProgress extends StatefulWidget {

  var list ,count;
  DreamsCommentatorInProgress(s, dtype) {
    list = s;count=dtype;
  }

  @override
  State<DreamsCommentatorInProgress> createState() => _DreamsCommentatorInProgressState(list,count);
}

class _DreamsCommentatorInProgressState extends State<DreamsCommentatorInProgress> {
  _DreamsCommentatorInProgressState(list, count);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBarCommentator(
        onTap: (index) {
          if (index==2){
            Navigator.pop(context);
            Navigator.pop(context);
          }if(index==0){
            Navigator.pop(context);
          }
          setState(() {
            currentIndex = index ;
          });
        } ,
      ),
      body:
      Stack(
        children: [
        Image.asset(
        'Assets/image/background.jpeg',
        width: double.infinity,
        height: 1200.0.h,
        fit: BoxFit.cover,
      ),

      Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 25.0,right: 20.0,top: 50.0).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 50.0).r,
                    child:
                    Text(
                      'احلام تحت التنفيذ ',
                      style: GoogleFonts.notoKufiArabic(
                          fontSize: 25.0.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                ),
                Padding(
            padding: const EdgeInsets.only(left: 25.0,right: 60.0).r,
            child: Row(
                      children: [
                        Text(
                          'العدد: ',
                          style: GoogleFonts.notoKufiArabic(
                              fontSize: 25.0.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          widget.count,
                          style: GoogleFonts.notoKufiArabic(
                              fontSize: 25.0.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.amber
                          ),
                        ),
                        Text(
                          '  احلام',
                          style: GoogleFonts.notoKufiArabic(
                              fontSize: 25.0.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
          ),
                SizedBox(height: 30.0.h,),

                    GenWidget().MofasNotFinishedList(context,widget.list),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      ],),
    );

  }
}
