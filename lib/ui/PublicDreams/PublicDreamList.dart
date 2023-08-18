
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Database/DB.dart';
import '../DreamsScreen/DoneDreams.dart';
import '../instructions/instructions.dart';


class PubDreamsList extends StatefulWidget {

  var alldreams ;
  PubDreamsList(s) {
    alldreams = s;
  }

  @override
  State<PubDreamsList> createState() => _PubDreamsListState(alldreams);
}

class _PubDreamsListState extends State<PubDreamsList> {
  _PubDreamsListState(alldreams);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBarCommentator(
        onTap: (index) {
          if (index==2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Instructions()));
          }if(index==0){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Instructions()));
          }
          setState(() {
            currentIndex = index ;
          });
        } ,
      ),
      body: Stack(
        children: [
        Image.asset(
        'Assets/image/background.jpeg',
        width: double.infinity,
        height: 1500.0.h,
        fit: BoxFit.cover,
      ),
      
      Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
         
              Padding(
                padding: const EdgeInsets.only(top: 45.0).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 50.0).r,
                      child:
                      Text(
                        "احلام تم الاستئذان من اصحابها لعرضها بغرض المنفعة العامة",
                        style: GoogleFonts.notoKufiArabic(
                            fontSize: 19.0.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                      ),
                    ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 100.0).r,
            child:
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: ElevatedButton.icon(
                        label: Text(
                          'عرض',
                          style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 17.0.sp,
                              fontWeight: FontWeight.w600
                          ),

                        ),
                        icon: Image.asset(
                          'Assets/image/arrow.png',
                          color: Colors.white,
                          width: 25.0.w,
                          height: 25.0.h,
                        ),
                        onPressed: () async {
                          setState(() {

                          });;
                          //getback to the previous page
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[400],

                          padding: const EdgeInsets
                              .only(left: 40.0,
                              right: 40.0,
                              top: 10.0,
                              bottom: 10.0)
                              .r,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius
                                .circular(10.0)
                                .w,
                            side: const BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),),
                    SizedBox(height: 30.0.h,),

                      GenWidget().PublicList(context,widget.alldreams),

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
