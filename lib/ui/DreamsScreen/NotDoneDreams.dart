
import 'package:bshair_elkher/ui/Database/Dream.dart';
import 'package:bshair_elkher/ui/DreamsScreen/Mofasser_Finished_Dream.dart';
import 'package:bshair_elkher/ui/DreamsScreen/Mofasser_NotFinished_Dream.dart';
import 'package:bshair_elkher/ui/DreamsScreen/ReadOnlyDream.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Database/DB.dart';
import '../instructions/instructions.dart';
import 'DoneDreams.dart';
import 'ReadOnlyFinishedDream.dart';


class NotDoneDreams extends StatefulWidget {

  var list ,count;

  NotDoneDreams(s, dtype) {
    list = s;count=dtype;
  }

  @override

  State<NotDoneDreams> createState() => _DreamsNotFinishedState(list,count);
}

class _DreamsNotFinishedState extends State<NotDoneDreams> {
  _DreamsNotFinishedState(list, count);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBar( onTap: (index) {
        if (index==2){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Instructions()));
        }if(index==0){
          Navigator.pop(context);
        }
        setState(() {
          currentIndex = index ;
        });
      } ,),
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
                padding: const EdgeInsets.only(left: 25.0,right: 20.0,top: 60.0).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0,right: 50.0).r,
                      child:
                      Text(
                        'احلام قيد التنفيذ',
                        style: GoogleFonts.notoKufiArabic(
                            fontSize: 25.0.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80.0).r,
                      child:
                      Row(
                        children:[
                          Text(
                              "العدد : ",
                              style: GoogleFonts.notoKufiArabic(
                                  fontSize: 23.0.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              )
                          ),
                          Text(
                            //here to write Number of dreams
                              widget.count.toString(),
                              style: GoogleFonts.notoKufiArabic(
                                  fontSize: 23.0.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.amberAccent
                              )
                          ),
                          Text(
                              " حلم",
                              style: GoogleFonts.notoKufiArabic(
                                  fontSize: 23.0.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              )
                          ),
                        ],),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    GenWidget().ListOfNotFinishedDreams(context,widget.list),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      ],
      ),
    );
  }
}
