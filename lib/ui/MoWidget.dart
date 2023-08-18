import 'package:bshair_elkher/ui/Checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'information/information_screen1.dart';
import 'nav_bar.dart';

class MoWidget {



/*void xx {
List<String> monames = [];
if(dtype == "dreamtype.normal") {monames = await GetNormalRecivers();}
else if (dtype == "dreamtype.bronze") {monames = await GetbronzeRecivers();}
else if (dtype == "dreamtype.golden") {monames = await GetGoldenRecivers();}
else if (dtype == "dreamtype.instant") {monames = await GetInstantRecivers();}
else return avail;
}*/


 List<Widget> getavmos(context,dtype,monames)  {

   List<Widget> rewidgs =[];
   List<Widget> moWidgets = [];

   monames.forEach((element) {
     moWidgets.add(getmoWidget(element,context,dtype));
   });
 // TODO : Change Here if wanted to add more mofasseren;
  if(moWidgets.length == 1) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));

    Padding p = Padding(
        padding: const EdgeInsets.only(right: 80.0).r,
      child: moWidgets[0],
    );
    rewidgs.add(p);
    return rewidgs;
  }
  else if(moWidgets.length == 2) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    return rewidgs;
  }

  else if(moWidgets.length == 3) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));

    rewidgs.add(GetOne(moWidgets[2]));
    return rewidgs;
  }
  else if(moWidgets.length == 4) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    return rewidgs;
  }
  else if(moWidgets.length == 5)  {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetOne(moWidgets[4]));
    return rewidgs;
  }
  else if(moWidgets.length == 6) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    return rewidgs;
  }
  else if(moWidgets.length == 7) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetOne(moWidgets[6]));

    return rewidgs;
  }
  else if(moWidgets.length == 8) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[6],moWidgets[7]));
    return rewidgs;
  }
  else if(moWidgets.length == 9)  {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[6],moWidgets[7]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetOne(moWidgets[8]));
    return rewidgs;
  }
  else if(moWidgets.length == 10) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[6],moWidgets[7]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[8],moWidgets[9]));
    return rewidgs;
  }
  else if(moWidgets.length == 11) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[6],moWidgets[7]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[8],moWidgets[9]));
    return rewidgs;
  }
  else if(moWidgets.length == 12) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[6],moWidgets[7]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[8],moWidgets[9]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[10],moWidgets[11]));
    return rewidgs;
  }
  else if(moWidgets.length == 13) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[6],moWidgets[7]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[8],moWidgets[9]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[10],moWidgets[11]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetOne(moWidgets[12]));
    return rewidgs;
  }
  else if(moWidgets.length == 14) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[6],moWidgets[7]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[8],moWidgets[9]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[10],moWidgets[11]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[12],moWidgets[13]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    return rewidgs;
  }
  else if(moWidgets.length == 15) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[6],moWidgets[7]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[8],moWidgets[9]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[10],moWidgets[11]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[12],moWidgets[13]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));

    rewidgs.add( GetOne(moWidgets[14]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    return rewidgs;
  }
  else if(moWidgets.length == 16) {
    rewidgs.add(SizedBox(
      height: 120.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[0],moWidgets[1]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[2],moWidgets[3]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[4],moWidgets[5]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[6],moWidgets[7]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[8],moWidgets[9]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[10],moWidgets[11]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    rewidgs.add( GetRow(moWidgets[12],moWidgets[13]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));

    rewidgs.add( GetRow(moWidgets[14],moWidgets[15]));
    rewidgs.add(SizedBox(
      height: 20.0.h,
    ));
    return rewidgs;
  }
  else { rewidgs.addAll(moWidgets); return rewidgs;}

 }

  //Widget getmoWidget(String element) {}


  Widget mobasher(context,dtype) => Row(
     children: [
       InkWell(
         onTap: (){
           //here to go to filldreamscreen
           print(dtype);
           Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("mo112",dtype)));
         },
         child: Container(
           margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
           width: 150.0.w,
           height: 190.0.h,
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(15.0).r,
           ),
           child: Column(
             children: [
               Row(
                 children: [
                   SizedBox(
                     width: 40.0.w,
                   ),
                   CircleAvatar(
                     backgroundImage: AssetImage(
                       'Assets/image/mohamed.png',
                     ),
                     radius: 30.0.w,
                   ),
                   SizedBox(
                     width: 15.0.w,
                   ),

                 ],
               ),
               SizedBox(
                 height: 5.0.h,
               ),
               Text(
                 'المفسر',
                 style: GoogleFonts.notoKufiArabic(
                     color: Colors.white,
                     fontSize: 14.7.sp,
                     fontWeight: FontWeight.w400
                 ),
               ),
               Text(
                 'محمد المباشر',
                 style: GoogleFonts.notoKufiArabic(
                     color: Colors.white,
                     fontSize: 14.7.sp,
                     fontWeight: FontWeight.w400
                 ),
               ),
               Text(
                 ' خبره 17 عام ',
                 style: GoogleFonts.notoKufiArabic(
                     color: Colors.white,
                     fontSize: 16.0.sp,
                     fontWeight: FontWeight.w400
                 ),
               ),
               choiceCommentatorStar5(),
             ],
           ),
         ),
       ),
     ],
     );
  Widget osama(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("os102",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: HexColor('008036'),
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/image3.png',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 10.0.h,
             ),
             Text(
               ' الشيخ ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 14.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' أسامه قديل ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 14.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 20 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),

   ],
 );
  Widget aboyehia(context,dtype) =>  Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("ya133",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: HexColor('008036'),
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/image2.png',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 2.0.h,
             ),
             Text(
               'المفسر',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 14.9.sp,
                   fontWeight: FontWeight.w400
               ),

             ),
             Text(
               'ابو يحي الأشرم ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 14.9.sp,
                   fontWeight: FontWeight.w400
               ),

             ),
             Text(
               ' خبره 20 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),

             SizedBox(
               height: 5.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
  Widget mfekery(context,dtype) =>  Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("mf902",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/image6.png',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 10.0.h,
             ),
             Text(
               'المفسر',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 14.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' محمود فكري ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 14.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 21 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
  Widget omnia(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("om092",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/image4.png',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 10.0.h,
             ),
             Text(
               'المفسرة ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 14.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               'امنية احمد  ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 14.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 20 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
  Widget abdelrhman(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("ab163",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: HexColor('008036'),
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/image1.png',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 8.0.h,
             ),
             Text(
               ' المفسر',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 15.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' عبد الرحمن الاحمري',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 15.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 20 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
  Widget malak(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("ma164",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/malak.jpg',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 7.0.h,
             ),
             Text(
               'المفسرة',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 15.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               'ملاك تفسير الاحلام',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 20 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 15.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
  Widget omrayan(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("or062",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: HexColor('008036'),
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/image5.png',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 6.0.h,
             ),
             Text(
               'المفسرة',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 15.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               'ام ريان',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 15.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 3 سنوات ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
  Widget ibra(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("ig142",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,

         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/ibrahem.png',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 1.0.h,
             ),
             Text(
               'الدكتور',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               'ابراهيم الجنابي',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 15 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
  Widget abdelsatart(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("eng150",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
//TODO:LINK Mofasser Raseed with mo DPROFILE PAGE !!!!!
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: HexColor('008036'),
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/abdo.png',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 1.0.h,
             ),
             Text(
               'المفسر',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               'عبدالستار حشمت',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 13 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );

 Widget baksh(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("baksh1",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
//TODO:LINK Mofasser Raseed with mo DPROFILE PAGE !!!!!
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: HexColor('008036'),
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/osman.jpeg',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 1.0.h,
             ),
             Text(
               'المفسر',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               'عثمان محمد بخش',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 16 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );

  Widget youssef(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("you323",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
//TODO:LINK Mofasser Raseed with mo DPROFILE PAGE !!!!!
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: HexColor('008036'),
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/youssef.jpg',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 1.0.h,
             ),
             Text(
               'الدكتور',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               'يوسف الحارثي',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 30 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );



 Widget nour(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("nour10",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
//TODO:LINK Mofasser Raseed with mo DPROFILE PAGE !!!!!
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: HexColor('008036'),
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/Nour.jpg',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 1.0.h,
             ),
             Text(
               'الدكتوره',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               'نور الهدي الجمال',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 15 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
 Widget swelam(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("yos10",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
//TODO:LINK Mofasser Raseed with mo DPROFILE PAGE !!!!!
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(
           color: HexColor('008036'),
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/swelam.jpg',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 1.0.h,
             ),
             Text(
               'المفسر',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               'يوسف عبدالله',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 18.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             Text(
               ' خبره 35 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
 Widget aziz(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("aziz35",dtype)));
       },
       child: Container(
         margin: EdgeInsets.only(left: 10.0,right: 10.0).r,
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(

           color: Colors.blue,
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: AssetImage(
                     'Assets/image/aziz.png',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 1.0.h,
             ),

             Text(
               'تفسير الاحلام \n ابو عزيز',
               textAlign: TextAlign.center,
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 17.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),

             Text(
               ' خبره 35 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
 Widget thw(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("ths1",dtype)));
       },
       child: Container(
         margin: EdgeInsets.only(left: 10.0,right: 10.0).r,
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(

           color: Colors.blue,
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: AssetImage(
                     'Assets/image/img.png',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 1.0.h,
             ),

             Text(
               "المفسرة \n ثويبة صابر",
               textAlign: TextAlign.center,
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 17.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),

             Text(
               ' خبره 10 اعوام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );
 Widget omyou(context,dtype) => Row(
   children: [
     InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationScreen1("os001",dtype)));
       },
       child: Container(
         margin: const EdgeInsets.only(left: 10.0,right: 10.0).r,
         width: 150.0.w,
         height: 190.0.h,
         decoration: BoxDecoration(

           color: Colors.blue,
           borderRadius: BorderRadius.circular(15.0).r,
         ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(
                   width: 40.0.w,
                 ),
                 CircleAvatar(
                   backgroundImage: const AssetImage(
                     'Assets/image/omyoussef.jpeg',
                   ),
                   radius: 30.0.w,
                 ),
                 SizedBox(
                   width: 15.0.w,
                 ),

               ],
             ),
             SizedBox(
               height: 1.0.h,
             ),

             Text(
               "المفسرة \n عواطف ام يوسف",
               textAlign: TextAlign.center,
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 17.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),

             Text(
               ' خبره 30 عام ',
               style: GoogleFonts.notoKufiArabic(
                   color: Colors.white,
                   fontSize: 16.0.sp,
                   fontWeight: FontWeight.w400
               ),
             ),
             SizedBox(
               height: 1.0.h,
             ),
             choiceCommentatorStar5()
           ],
         ),
       ),
     ),
   ],
 );

  Widget getmoWidget(mo,context,dtype) {
    if (mo == 'mo112') {
      return mobasher(context, dtype);
    }
    else if (mo == 'ya133') {
      return aboyehia(context, dtype);
    }
    else if (mo == 'os102') {
      return osama(context, dtype);
    }
    else if (mo == 'om092') {
      return omnia(context, dtype);
    }
    else if (mo == 'mf902') {
      return mfekery(context, dtype);
    }
    else if (mo == 'ab163') {
      return abdelrhman(context, dtype);
    }
    else if (mo == 'ma164') {
      return malak(context, dtype);
    }
    else if (mo == 'or062') {
      return omrayan(context, dtype);
    }
    else if (mo == 'ig142') {
      return ibra(context, dtype);
    }
    else if (mo == 'eng150') {
      return abdelsatart(context, dtype);
    }
    else if (mo == 'you323') {
      return youssef(context, dtype);
    }
    else if (mo == 'nour10') {
      return nour(context, dtype);
    }
    else if (mo == 'yos10') {
      return swelam(context, dtype);
    }
    else if (mo == 'aziz35') {
      return aziz(context, dtype);
    }
    else if (mo == 'ths1') {
      return thw(context, dtype);
    }
    else if (mo == 'os001') {
      return omyou(context, dtype);
    }
    else if (mo == 'baksh1') {
      return baksh(context, dtype);
    }
    else {
      return showAlertDialog(context);
    }
  }

  Widget GetRow(Widget moWidget, Widget moWidget2) {

    Padding x = Padding(
        padding: const EdgeInsets.only(right: 10.0).r,
   child: Row(
      children: [
        moWidget,
        SizedBox(
          width: 5.0.w,
        ),
        moWidget2,
      ],
    ));
    return x;

  }
  Widget GetOne(Widget one) {

     Padding(
      padding: const EdgeInsets.only(right: 0.0).r,
      child: one,
    );
    return one;
  }




}