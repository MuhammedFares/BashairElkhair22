

import 'package:bshair_elkher/ui/Database/Dream.dart';
import 'package:bshair_elkher/ui/DreamByComm/CommDream.dart';
import 'package:bshair_elkher/ui/DreamsScreen/Mofasser_Finished_Dream.dart';
import 'package:bshair_elkher/ui/DreamsScreen/Mofasser_NotFinished_Dream.dart';
import 'package:bshair_elkher/ui/DreamsScreen/ReadOnlyDream.dart';
import 'package:bshair_elkher/ui/PublicDreams/SingleDream.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


import '../Tools/time.dart';
import '../instructions/instructions.dart';
import 'DreamsForSameClient.dart';
import 'ReadOnlyFinishedDream.dart';


class DoneDreams extends StatefulWidget {

  var list ,count;

  DoneDreams(s, dtype) {
    list = s;count=dtype;
  }

  @override

  State<DoneDreams> createState() => _DreamsFinishedState(list,count);
}

class _DreamsFinishedState extends State<DoneDreams> {
  _DreamsFinishedState(list, count);


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
                padding: const EdgeInsets.only(left: 25.0,right: 15.0,top: 60.0).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
    padding: const EdgeInsets.only(left: 25.0,right: 50.0).r,
    child:
                    Text(
                      'احلام تم تفسيرها',
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
                    GenWidget().ListOFFinishedDreams(context,widget.list),

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

class GenWidget {


  Widget ListOFFinishedDreams(cont ,list) {

    List<dream> d = list;
    int x= 0;
    List<Widget> wids = [];
    d.forEach((element) {


      wids.add(OneFinishedDream(element,x+1, element.content,cont));
      wids.add( SizedBox(
        height: 30.0.h,
      ));
      x++;
    });

   return  Column(
        children: wids,
   );

  }
  Widget ListOfNotFinishedDreams(cont ,list) {

    List<dream> d = list;
    int x= 0;
    List<Widget> wids = [];
    d.forEach((element) {


      wids.add(OneNotFinishedDream(element,x+1, element.content,cont));
      wids.add( SizedBox(
        height: 30.0.h,
      ));
      x++;
    });

    return  Column(
      children: wids,
    );

  }

  Widget OneFinishedDream (dream d ,int index , String title, BuildContext cont) =>  Row(

    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
      height: 30.0.h,
    ),
      Row(
        children: [
          Container(
            width: 40.0.w,
            height: 40.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 2.0.w,
              ),
            ),
            child: Text(
              textAlign: TextAlign.center,
              index.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            width: 15.0.w,
          ),
          Container(
            width: 260.0.w,
            height: 50.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child:    InkWell(
              onTap: (){
                print(d.time_post);
                Navigator.push(cont, MaterialPageRoute(builder: (context)=>ReadOnlyFinishedDream(d)));
              },
              child: Container(
                width: 230.0.w,
                height: 50.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0).w,
                  color:Colors.transparent,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  maxLines: 3,
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 20.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
  Widget OneNotFinishedDream (dream d ,int index , String title, BuildContext cont) =>  Row(

    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 30.0.h,
      ),
      Row(
        children: [
          Container(
            width: 40.0.w,
            height: 40.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child: Text(
              textAlign: TextAlign.center,
              index.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            width: 15.0.w,
          ),
          Container(
            width: 260.0.w,
            height: 50.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child:    InkWell(
              onTap: (){
                print(d.time_post);
                Navigator.push(cont, MaterialPageRoute(builder: (context)=>ReadOnlyDream(d)));
              },
              child: Container(
                width: 220.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0).w,
                  color:Colors.transparent,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 23.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );

  Widget MoFinishedDream (dream d ,int index , String title, BuildContext cont) =>  Row(

    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 30.0.h,
      ),
      Row(
        children: [
          Container(
            width: 40.0.w,
            height: 40.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child: Text(
              textAlign: TextAlign.center,
              index.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            width: 15.0.w,
          ),
          Container(
            width: 260.0.w,
            height: 55.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child:    InkWell(
              onTap: (){
                print(d.time_post);
                Navigator.push(cont, MaterialPageRoute(builder: (context)=>MofasserFinishedDream(d)));
              },
              child: Container(
                width: 200.0.w,
                height: 38.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0).w,
                  color:Colors.transparent,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 23.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
  Widget MoNotFinishedDream (dream d ,int index , String title, BuildContext cont) =>  Row(

    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 20.0.h,
      ),
      Row(
        children: [
          Container(
            width: 40.0.w,
            height: 40.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child: Text(
              textAlign: TextAlign.center,
              index.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            width: 15.0.w,
          ),
          Container(
            width: 260.0.w,
            height: 60.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child:    InkWell(
              onTap: () async {
                String rest = await timeadapter().GetrestOfTime(d.time_post,d.dreamtype,d.response);
                Navigator.push(cont, MaterialPageRoute(builder: (context)=>MofasserNotFinishedDream(d,rest)));
              },
              child: Container(
                width: 220.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0).w,
                  color:Colors.transparent,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );

  Widget SameClientOneDream (dream d ,int index , String title, BuildContext cont) =>  Row(

    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 20.0.h,
      ),
      Row(
        children: [
          Container(
            width: 40.0.w,
            height: 40.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child: Text(
              textAlign: TextAlign.center,
              index.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            width: 15.0.w,
          ),
          Container(
            width: 260.0.w,
            height: 60.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child:    InkWell(
              onTap: (){
                print(d.time_post);
                Navigator.push(cont, MaterialPageRoute(builder: (context)=>DreamsForSameClient(d)));
              },
              child: Container(
                width: 220.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0).w,
                  color:Colors.transparent,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
  Widget PubDream (dream d ,int index , String title, BuildContext cont) =>  Row(

    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 20.0.h,
      ),
      Row(
        children: [
          Container(
            width: 45.0.w,
            height: 30.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child: Text(
              textAlign: TextAlign.center,
              index.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            width: 15.0.w,
          ),
          Container(
            width: 260.0.w,
            height: 60.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child:    InkWell(
              onTap: (){
                print(d.time_post);
                Navigator.push(cont, MaterialPageRoute(builder: (context)=>SignleDream(d)));
              },
              child: Container(
                width: 220.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0).w,
                  color:Colors.transparent,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );

  Widget MoPublicOneDream (dream d ,int index , String title, BuildContext cont) =>  Row(

    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 20.0.h,
      ),
      Row(
        children: [
          Container(
            width: 40.0.w,
            height: 40.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child: Text(
              textAlign: TextAlign.center,
              index.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            width: 15.0.w,
          ),
          Container(
            width: 260.0.w,
            height: 60.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0).w,
              border: Border.all(
                color: HexColor('FABC05'),
                width: 3.0.w,
              ),
            ),
            child:    InkWell(
              onTap: (){
                print(d.time_post);
                Navigator.push(cont, MaterialPageRoute(builder: (context)=>CommDream(d)));
              },
              child: Container(
                width: 220.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0).w,
                  color:Colors.transparent,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );

  Widget MofasFinishedList(cont,list){
    List<dream> d = list;
    int x= 0;
    List<Widget> wids = [];
    d.forEach((element) {


      wids.add(MoFinishedDream(element,x+1, element.content,cont));
      wids.add( SizedBox(
        height: 30.0.h,
      ));
      x++;
    });

    return  Column(
      children: wids,
    );
  }
  Widget MofasNotFinishedList(cont,list){
    List<dream> d = list;
    int x= 0;
    List<Widget> wids = [];
    d.forEach((element) {


      wids.add(MoNotFinishedDream(element,x+1, element.content,cont));
      wids.add( SizedBox(
        height: 30.0.h,
      ));
      x++;
    });

    return  Column(
      children: wids,
    );
  }

  Widget MoPublicDreams(cont,list){
    List<dream> d = list;
    int x= 0;
    List<Widget> wids = [];
    d.forEach((element) {


      wids.add(MoPublicOneDream(element,x+1, element.content,cont));
      wids.add( SizedBox(
        height: 30.0.h,
      ));
      x++;
    });

    return  Column(
      children: wids,
    );
  }


  Widget SameClientList(cont,list){
    List<dream> d = list;
    int x= 0;
    List<Widget> wids = [];
    d.forEach((element) {


      wids.add(SameClientOneDream(element,x+1, element.content,cont));
      wids.add( SizedBox(
        height: 30.0.h,
      ));
      x++;
    });

    return  Column(
      children: wids,
    );
  }
  Widget PublicList(cont,list){
    List<dream> d = list;
    int x= 0;
    d.shuffle();
    List<Widget> wids = [];
    d.forEach((element) {
      wids.add(PubDream(element,x+1, element.content,cont));
      wids.add( SizedBox(
        height: 30.0.h,
      ));
      x++;
    });



    return  Column(
      children: wids,
    );
  }
}
