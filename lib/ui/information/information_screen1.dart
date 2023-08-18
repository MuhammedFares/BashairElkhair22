
import 'package:bshair_elkher/testweb.dart';
import 'package:bshair_elkher/ui/Database/DB.dart';
import 'package:bshair_elkher/ui/Database/Dream.dart';
import 'package:bshair_elkher/ui/Tools/RegID.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../ModernUi/Snack.dart';
import '../ModernUi/choice.dart';
import '../instructions/instructions.dart';
import '../nav_bar.dart';

class InformationScreen1 extends StatefulWidget {
  var mofasser,drtype;

  InformationScreen1(s, dtype, {super.key}){
    mofasser = s;drtype=dtype;
  }



  @override
  State<InformationScreen1> createState() => _InformationScreen1State(mofasser,drtype);
}

class _InformationScreen1State extends State<InformationScreen1> {
  var Formkey = GlobalKey<FormState>();

  _InformationScreen1State(mofasser,drtype);
  bool approved = false ;
  TextEditingController sex = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController job = TextEditingController();
  TextEditingController martial_stat = TextEditingController();
  TextEditingController tareekh_royaa = TextEditingController();
  TextEditingController contet = TextEditingController();
  @override
  Widget build(BuildContext context) {



    change(bool ap){
   approved = ap;
    }
    return Scaffold(

      resizeToAvoidBottomInset: false,

      bottomNavigationBar: bottomNavBar( onTap: (index) {
          if (index==2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Instructions()));
          }if(index==0){
            Navigator.pop(context);
          }
         /* setState(() {
            currentIndex = index ;
          });*/
        } ,),
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
                            height: 70.0.h,
                            decoration: BoxDecoration(
                                color: Colors.blue[400],
                                borderRadius: BorderRadius.circular(15.0).w
                            ),
                            child: Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  'عميلنا العزيز  ',
                                  style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                      fontSize: 15.0.sp,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  'يرجى ادخال بيانات صاحب الرؤيا  ',
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 13.0.sp,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                        'اكتب حلمك بطريقه واضحه ',
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 18.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextFormField(
                          controller: contet,
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
                        height: 15.0.h,
                      ),
                      Text(
                        'هل تسمح بعرض الحلم للعامة بعد تفسيره للأستفادة منه   ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    /*  Directionality(
                        textDirection: TextDirection.ltr,
                        child:
                        ToggleButtons(
                          // list of booleans
                            isSelected: isSelected,
                            // text color of selected toggle
                            selectedColor: Colors.white,
                            // text color of not selected toggle
                            color: Colors.white,
                            // fill color of selected toggle
                            fillColor: Colors.green,
                            // when pressed, splash color is seen
                            splashColor: Colors.amberAccent,
                            // long press to identify highlight color
                            highlightColor: Colors.orange,
                            // if consistency is needed for all text style
                            textStyle: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 16.0.sp,
                              fontWeight: FontWeight.w900,
                            ),
                            // border properties for each toggle
                            renderBorder: true,
                            borderColor: Colors.white,
                            borderWidth: 3,
                            borderRadius: BorderRadius.circular(6),
                            selectedBorderColor: Colors.white,
// add widgets for which the users need to toggle
                            children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text('لا اسمح', style: TextStyle(fontSize: 18)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text('نعم اسمح', style: TextStyle(fontSize: 18)),
                            ),],
// to select or deselect when pressed
                          onPressed: (int newIndex) {
                         setState(() {
                           if (newIndex == 1) {
                             approved = true;
                           }
                           else {
                             approved = false;
                           }
                         });
                           // setState(() {
                              // looping through the list of booleans values
                              for (int index = 0; index < isSelected.length; index++) {
                                // checking for the index value
                                if (index == newIndex) {

                                  // one button is always set to true
                                  isSelected[index] = true;

                                } else {

                                  // other two will be set to false and not selected
                                  isSelected[index] = false;
                                }
                              print("Client approved ? : $approved");}

                          },
                        ),
                      ),*/
                      //Choise wIDGET
                      SizedBox(
                        height: 15.h,
                      ),
                      Parent(change),
                      SizedBox(
                        height: 15.h,
                      ),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: ElevatedButton.icon(
                          label: Text(
                            'ارسال',
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
                          if(sex.text.trim() =="" ||
                              age.text.trim() ==""||
                              martial_stat.text.trim() ==""||
                              contet.text.trim() ==""||
                              tareekh_royaa.text.trim() ==""){
                            print(approved.toString());
                           print("null fileds");
                           print(widget.mofasser.toString());
                           showSnackBar(context,"يرجي ملئ جميع الخانات");
                           // show some warning notification
                                }
                          else {
                            var data = widget.mofasser;
                            var data2 = widget.drtype;

                            var genId=data.toString()+"MOKA"+getRandomDreamId(data.toString().length);

                            dream d = dream
                              (data2.toString(), await RegID().CstId, data.toString(), sex.text,
                                age.text, job.text,
                                martial_stat.text, tareekh_royaa.text, contet.text,
                                "noresponse", genId , "notdone","",approved.toString());



                            var player = await GetMoPlayer(d.mo_id);
                            var title  =castRoyaa(d.dreamtype);

                            var Content = "لديك طلب تفسير ";
                            var t = castRoyaa(d.dreamtype);
                            var ss = Content +" "+ t+" ";

                            await start(context, d, player, title, ss);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>widi()));

                          }
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
}
List<bool> isSelected = [true, false];

String castRoyaa(String dreamtype) {
  if(dreamtype == "dreamtype.normal"){ return "رؤية عادية" ;}
  else if (dreamtype == "dreamtype.bronze"){ return "رؤية فضية" ;}
  else if (dreamtype == "dreamtype.golden"){ return "رؤية ذهبية" ;}
  else if (dreamtype == "dreamtype.instant"){ return "رؤية فورية" ;}
  else {print(dreamtype);  return "تفسير الرؤية" ; }
}
