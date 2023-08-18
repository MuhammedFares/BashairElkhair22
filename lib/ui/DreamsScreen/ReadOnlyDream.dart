
import 'package:bshair_elkher/ui/Database/DB.dart';
import 'package:bshair_elkher/ui/Database/Dream.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Chat/NewChat.dart';
import '../Database/chatDb.dart';
import '../Database/chatmessage.dart';
import '../instructions/instructions.dart';
import '../nav_bar.dart';

class ReadOnlyDream extends StatefulWidget {
  var drr;

  ReadOnlyDream(s, {super.key}){
    drr = s;
  }



  @override
  State<ReadOnlyDream> createState() => _ReadOnlyDreamState(drr);
}

class _ReadOnlyDreamState extends State<ReadOnlyDream> {
  var Formkey = GlobalKey<FormState>();

  _ReadOnlyDreamState(drr);


  @override
  Widget build(BuildContext context) {

    dream d = widget.drr;
    print(d.time_post);
    TextEditingController sex = TextEditingController(text: d.sex);
    TextEditingController age = TextEditingController(text: d.age);
    TextEditingController job = TextEditingController(text: d.job);
    TextEditingController martial_stat = TextEditingController(text: d.martial_stat);
    TextEditingController tareekh_royaa = TextEditingController(text: d.tareekh_royaa);
    TextEditingController contet = TextEditingController(text: d.content);
   // TextEditingController response = TextEditingController();

    return Scaffold(

      bottomNavigationBar: bottomNavBar(
        onTap: (index) {
          if (index==2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Instructions()));
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
        child: Form(
          key: Formkey,
          child: Stack(
            children: [
              Image.asset(
                'Assets/image/background.jpeg',
                width: double.infinity,
                height: 720.0.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0).r,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row (
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0,).r,
                            child: Image.asset(
                              'Assets/image/logo.png',
                              width: 80.0.w,
                              height: 80.0.h,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 50.0,right:10.0).r,
                            width: 230.0.w,
                            height: 90.0.h,
                            decoration: BoxDecoration(
                                color: Colors.blue[400],
                                borderRadius: BorderRadius.circular(15.0).w
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      castRoyaa(d.dreamtype),
                                      style: GoogleFonts.notoKufiArabic(
                                          color: Colors.white,
                                          fontSize: 14.0.sp,
                                          fontWeight: FontWeight.w800
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      d.time_post,
                                      style: GoogleFonts.notoKufiArabic(
                                          color: Colors.white,
                                          fontSize: 12.0.sp,
                                          fontWeight: FontWeight.w800
                                      ),
                                    ),
                                  ],
                                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  castMo(d.mo_id),
                  style: GoogleFonts.notoKufiArabic(
                      color: Colors.white,
                      fontSize: 12.0.sp,
                      fontWeight: FontWeight.w800
                  )
                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child:
                        SizedBox(
                          width: 330,
                          child:ElevatedButton.icon(

                            label: Text(
                              'الدردشة',
                              style: GoogleFonts.notoKufiArabic(
                                  color: Colors.white,
                                  fontSize: 17.0.sp,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            icon:Image.asset(
                              'Assets/image/send.png',
                              color: Colors.white,
                              width: 25.0.w,
                              height: 25.0.h,
                            ) ,
                            onPressed: () async {
                              List<chatmessage> ls = await chatdb().getallMessages(d.gen_id);
                              var player = await GetMoPlayer(d.mo_id);
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>
                                      NewChat(false
                                          ,ls,d.gen_id,player)));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[400],
                              padding: const EdgeInsets.only(left: 40.0,right: 40.0,top: 10.0,bottom: 10.0).r,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0).w,
                                side: const BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        )
                      ),
                      SizedBox(
                        height: 30.0.h,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 150.0.w,
                            height: 80.0.h,
                            decoration: BoxDecoration(
                                color: HexColor('47b717'),
                                borderRadius: BorderRadius.circular(15.0).w
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10.0.w,
                                ),
                                Text(
                                  'الجنس : ',
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0.sp
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0.w,
                                ),
                                SizedBox(
                                  width: 60.0.w,
                                  height: 70.0.h,
                                  child: TextFormField(
                                      controller: sex,
                                      enabled: false,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                          fontSize: 18.0.sp,
                                          fontWeight: FontWeight.w600
                                      ),
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0).w,
                                        ),
                                        errorBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20).w,
                                          borderSide: const BorderSide(
                                            color: Colors.red,
                                          ),
                                        ),
                                        focusedErrorBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20).w,
                                          borderSide: const BorderSide(
                                            color: Colors.red,
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0).w,
                                        ),
                                      ),
                                      validator: (value)
                                      {
                                        if(value?.isEmpty ?? true )
                                        {
                                          return '' ;
                                        }
                                        return null ;
                                      }
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20.0.w,
                          ),
                          Container(
                            width: 150.0.w,
                            height: 80.0.h,
                            decoration: BoxDecoration(
                                color: HexColor('47b717'),
                                borderRadius: BorderRadius.circular(15.0).w
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10.0.w,
                                ),
                                Text(
                                  'العمر : ',
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0.sp
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0.w,
                                ),
                                SizedBox(
                                  width: 60.0.w,
                                  height: 70.0.h,
                                  child: TextFormField(
                                      controller: age,
                                      enabled: false,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          fontSize: 20.0.sp,
                                          fontWeight: FontWeight.w600
                                      ),
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0).w,
                                        ),
                                        errorBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20).w,
                                          borderSide: const BorderSide(
                                            color: Colors.red,
                                          ),
                                        ),
                                        focusedErrorBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20).w,
                                          borderSide: const BorderSide(
                                            color: Colors.red,
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0).w,
                                        ),
                                      ),
                                      validator: (value)
                                      {
                                        if(value?.isEmpty ?? true )
                                        {
                                          return '' ;
                                        }
                                        return null ;
                                      }
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 150.0.w,
                            height: 80.0.h,
                            decoration: BoxDecoration(
                                color: HexColor('47b717'),
                                borderRadius: BorderRadius.circular(15.0).w
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'المهنه / الوظيفه ',
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0.sp
                                  ),
                                ),
                                SizedBox(
                                  width: 90.0.w,
                                  height: 40.0.h,
                                  child: TextFormField(
                                      controller: job,
                                      enabled: false,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                          fontSize: 20.0.sp,
                                          fontWeight: FontWeight.w600
                                      ),
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0).w,
                                        ),
                                        errorBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20).w,
                                          borderSide: const BorderSide(
                                            color: Colors.red,
                                          ),
                                        ),
                                        focusedErrorBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20).w,
                                          borderSide: const BorderSide(
                                            color: Colors.red,
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0).w,
                                        ),
                                      ),
                                      validator: (value)
                                      {
                                        if(value?.isEmpty ?? true )
                                        {
                                          return '' ;
                                        }
                                        return null ;
                                      }
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20.0.w,
                          ),
                          Container(
                            width: 150.0.w,
                            height: 80.0.h,
                            decoration: BoxDecoration(
                                color: HexColor('47b717'),
                                borderRadius: BorderRadius.circular(15.0).w
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'الحاله الأجتماعيه ',
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0.sp
                                  ),
                                ),
                                SizedBox(
                                  width: 90.0.w,
                                  height: 40.0.h,
                                  child: TextFormField(
                                      controller: martial_stat,
                                      enabled: false,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                          fontSize: 20.0.sp,
                                          fontWeight: FontWeight.w600
                                      ),
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0).w,
                                        ),
                                        errorBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20).w,
                                          borderSide: const BorderSide(
                                            color: Colors.red,
                                          ),
                                        ),
                                        focusedErrorBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20).w,
                                          borderSide: const BorderSide(
                                            color: Colors.red,
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0).w,
                                        ),
                                      ),
                                      validator: (value)
                                      {
                                        if(value?.isEmpty ?? true )
                                        {
                                          return '' ;
                                        }
                                        return null ;
                                      }
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10.0).r,
                        width: double.infinity,
                        height: 50.0.h,
                        decoration: BoxDecoration(
                            color: HexColor('47b717'),
                            borderRadius: BorderRadius.circular(15.0).w
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20.0.w,
                            ),
                            Text(
                              'تاريخ الرؤيه : ',
                              style: GoogleFonts.notoKufiArabic(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0.sp
                              ),
                            ),
                            SizedBox(
                              width: 10.0.w,
                            ),
                            SizedBox(
                              width: 150.0.w,
                              height: 40.0.h,
                              child: TextFormField(
                                  controller: tareekh_royaa,
                                  enabled: false,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.text,
                                  style: TextStyle(
                                      fontSize: 20.0.sp,
                                      fontWeight: FontWeight.w600
                                  ),
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0).w,
                                    ),
                                    errorBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20).w,
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                    focusedErrorBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20).w,
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0).w,
                                    ),
                                  ),
                                  validator: (value)
                                  {
                                    if(value?.isEmpty ?? true )
                                    {
                                      return '' ;
                                    }
                                    return null ;
                                  }
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Text(
                        "تفاصيل الحلم المرسل",
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 18.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextFormField(
                          controller: contet,
                          enabled: true,
                          readOnly: true,
                          autovalidateMode: AutovalidateMode.always,
                          textAlign:TextAlign.start,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w600
                          ),
                          cursorColor: Colors.black,
                          maxLines: 10,
                          decoration: InputDecoration(
                            // hintText: 'بسم الله الرحمن الرحيم  ,'
                            //     ' لقد رأيت فى المنام انى ..',
                            hintStyle: GoogleFonts.notoKufiArabic(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 13.0.sp
                            ),
                            enabledBorder:OutlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor('47B717'),
                              ),
                              borderRadius: BorderRadius.circular(20.0).w,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor('47B717'),
                              ),
                              borderRadius: BorderRadius.circular(20.0).w,
                            ),
                            errorBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20).w,
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20).w,
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          validator: (value)
                          {
                            if(value?.isEmpty ?? true )
                            {

                              return '' ;
                            }
                            return null ;
                          }
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),

                    
                      SizedBox(
                        height: 20.0.h,
                      ),

                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: ElevatedButton.icon(
                          label: Text(
                            'تم',
                            style: GoogleFonts.notoKufiArabic(
                                color: Colors.white,
                                fontSize: 17.0.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          icon:Image.asset(
                            'Assets/image/send.png',
                            color: Colors.white,
                            width: 25.0.w,
                            height: 25.0.h,
                          ) ,
                          onPressed: () async {
                            Navigator.pop(context);
                            //getback to the previous page
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[400],
                            padding: const EdgeInsets.only(left: 40.0,right: 40.0,top: 10.0,bottom: 10.0).r,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0).w,
                              side: const BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String castRoyaa(String dreamtype) {
    if(dreamtype == "dreamtype.normal"){ return "رؤية عادية" ;}
    else if (dreamtype == "dreamtype.bronze"){ return "رؤية قضية" ;}
    else if (dreamtype == "dreamtype.golden"){ return "رؤية ذهبية" ;}
    else if (dreamtype == "dreamtype.instant"){ return "رؤية فورية" ;}
    else {print(dreamtype);  return "تفسير الرؤية" ; }
  }
}


String castMo(String mo) {
  if (mo == 'mo112') {
    return "المفسر/ محمد المباشر";
  }
  else if (mo == 'ya133') {
    return "المفسر/ ابو يحي الاشرم";
  }
  else if (mo == 'os102') {
    return "الشيخ/ أسامة قنديل";
  }
  else if (mo == 'om092') {
    return "المفسرة/ امنيه احمد";
  }
  else if (mo == 'mf902') {
    return "المفسر/ محمود فكري";
  }
  else if (mo == 'ab163') {
    return "المفسر/ عبدالرحمن الاحمري";
  }
  else if (mo == 'ma164') {
    return "المفسرة/ ملاك تفسيرالاحلام";
  }
  else if (mo == 'or062') {
    return "المفسرة/ ام ريان";
  }
  else if (mo == 'ig142') {
    return "الدكتور/ ابراهيم الجنابي";
  }
  else if (mo == 'eng150') {
    return "المفسر/ عبدالستار حشمت";
  }
  else if (mo == 'you323') {
    return "الدكتور/ يوسف الحارثي";
  }
  else if (mo == 'nour10') {
    return "الدكتوره/ نور الهدي الجمال";
  }
  else if (mo == 'yos10') {
    return "المفسر/ يوسف السويلم";
  }
  else if (mo == 'aziz35') {
    return "المفسر/ ابو عزيز";
  }
  else if (mo == 'ths1') {
    return "المفسره/ ثويبة صابر";
  }
  else if (mo == 'os001') {
    return "المفسره/ عواطف ام يوسف";
  }
  else if (mo == 'baksh1') {
    return "المفسر/ عثمان محمد بخش";
  }
  else {
    return " لم يظهر المفسر";
  }
}