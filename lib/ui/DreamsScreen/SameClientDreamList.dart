
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Database/DB.dart';
import '../DreamsScreen/DoneDreams.dart';
import '../instructions/instructions.dart';


class SameClientDreamList extends StatefulWidget {

  var clientId ;
  SameClientDreamList(s) {
    clientId = s;
  }

  @override
  State<SameClientDreamList> createState() => _SameClientDreamListState(clientId);
}

class _SameClientDreamListState extends State<SameClientDreamList> {
  _SameClientDreamListState(clientId);

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
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Image.asset(
                'Assets/image/background.jpeg',
                width: double.infinity,
                height: 1200.0.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0,right: 20.0,top: 60.0).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 50.0).r,
                      child:
                      Text(
                        'احلام لنفس العميل  ',
                        style: GoogleFonts.notoKufiArabic(
                            fontSize: 25.0.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                      ),
                    ),

                    SizedBox(height: 30.0.h,),

                    GenWidget().SameClientList(context,widget.clientId),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
