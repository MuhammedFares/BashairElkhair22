
import 'package:bshair_elkher/ui/Chat/NewChat.dart';
import 'package:bshair_elkher/ui/Database/Dream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../Database/DB.dart';
import '../Database/chatDb.dart';
import '../Database/chatmessage.dart';
import '../ModernUi/Snack.dart';
import '../Notifications/onesignal_flutter.dart';

import '../Tools/RegMo.dart';
import '../instructions/prog.dart';
import '../nav_bar.dart';
import '../profile/Dprofile.dart';
import 'SameClientDreamList.dart';

class MofasserNotFinishedDream extends StatefulWidget {
  var dr;
  var cr;

  MofasserNotFinishedDream(drx,drc, {super.key}) {
    dr =drx;
    cr = drc;
  }
  @override
  State<MofasserNotFinishedDream> createState() => _MofasserNotFinishedDreamState(dr,cr);
}

class _MofasserNotFinishedDreamState extends State<MofasserNotFinishedDream> {
  var Formkey = GlobalKey<FormState>();

  _MofasserNotFinishedDreamState(dr,cr);
  TextEditingController response = TextEditingController();

  @override
  Widget build(BuildContext context) {
    dream d = widget.dr;

    return Scaffold(

      resizeToAvoidBottomInset: false,


      bottomNavigationBar: bottomNavBar(
        onTap: (index) {
          if (index==2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                DProfile(HisId: d.mo_id,
                    hisphoto: RegMo().MofaserImage(
                        d.mo_id), total: '', rest: '', paid: '',)));
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row (
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0,).r,
                            child: Image.asset(
                              'Assets/image/logo.png',
                              width: 70.0.w,
                              height: 70.0.h,
                            ),
                          ),

                          SizedBox(
                            width: 10.0.h,
                          ),
                          Padding(
                  padding: const EdgeInsets.only(top: 50.0,).r,
                  child: Directionality(
                              textDirection: TextDirection.ltr,
                              child:
                              SizedBox(
                                width: 250,
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
                                    var player = await GetCstPlayer(d.useruid);
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>
                                            NewChat(true
                                                ,ls,d.gen_id,player)));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue[400],
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
                          )),

                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20.0).r,
                        width: double.infinity,
                        height: 250.0.h,
                        decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(15.0).w
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5.0.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.0.w,
                                ),
                                Padding(
                                padding: const EdgeInsets.only(left: 15.0,right: 55.0).r,
                                child:
                                Text(
                                  textAlign: TextAlign.center,
                                    'نوع الرؤيه  :  ' +castRoyaa(d.dreamtype) ,
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 16.0.sp,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 55.0.w,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  'تاريخ الرؤيه :   ',
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 16.0.sp,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  d.tareekh_royaa,
                                  style: GoogleFonts.notoKufiArabic(
                                      fontSize: 16.0.sp,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5.0.w,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  'وقت وصول الرؤيه :   ',
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 19.0.sp,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 25.0.w,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 70.0,).r,
                                  child:
                                Text(
                                  textAlign: TextAlign.center,

                                  formattimepost(d.time_post),
                                  style: GoogleFonts.notoKufiArabic(
                                      fontSize: 20.0.sp,
                                      color: Colors.amberAccent,

                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                                ),
//backhere)
                              ],
                            ),

                            Row(
                              children: [
                                SizedBox(
                                  width: 5.0.w,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  'باقي من زمن الرؤيه :   ',
                                  style: GoogleFonts.notoKufiArabic(
                                      color: Colors.white,
                                      fontSize: 19.0.sp,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 25.0.w,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 60.0,).r,
                                  child:
                                  Text(
                                    textAlign: TextAlign.center,
                                       widget.cr.toString(),
                                    style: GoogleFonts.notoKufiArabic(
                                        fontSize: 20.0.sp,
                                        color: Colors.amberAccent,

                                        fontWeight: FontWeight.w800
                                    ),
                                  ),
                                ),
//backhere)
                              ],
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),


                      Row(
                        children: [
                          Container(
                            width: 150.0.w,
                            height: 60.0.h,
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
                                Container(
                                  padding: const EdgeInsets.only(top: 10.0).r,
                                  width: 60.0.w,
                                  height: 50.0.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0).w
                                  ),
                                  child:Text(
                                    textAlign: TextAlign.center,
                                      d.sex,
                                    style: GoogleFonts.notoKufiArabic(
                                        fontSize: 15.0.sp,
                                        fontWeight: FontWeight.w600
                                    ),
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
                            height: 60.0.h,
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
                                  width: 5.0.w,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 10.0).r,
                                  width: 60.0.w,
                                  height: 50.0.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0).w
                                  ),
                                  child:Text(
                                    textAlign: TextAlign.center,
                                      d.age,
                                    style: GoogleFonts.notoKufiArabic(
                                        fontSize: 15.0.sp,
                                        fontWeight: FontWeight.w600
                                    ),
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
                              'المهنه / الحاله :  ',
                              style: GoogleFonts.notoKufiArabic(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0.sp
                              ),
                            ),
                            SizedBox(
                              width: 5.0.w,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 5.0).r,
                              width: 70.0.w,
                              height: 40.0.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0).w
                              ),
                              child:Text(
                                textAlign: TextAlign.center,
                                d.job,
                                style: GoogleFonts.notoKufiArabic(
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.0.w,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 5.0).r,
                              width: 70.0.w,
                              height: 40.0.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0).w
                              ),
                              child:Text(

                                textAlign: TextAlign.center,
                                  d.martial_stat,
                                style: GoogleFonts.notoKufiArabic(
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'نص الرؤيا: ',
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 17.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 180.0.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0).w,
                          border: Border.all(
                            color: HexColor('47B717'),
                            width: 1.5.w,
                          ),
                        ),
                        child:
                        //----------
                        TextFormField(
                            enabled: true,
                            autovalidateMode: AutovalidateMode.always,
                            textAlign:TextAlign.start,
                            keyboardType: TextInputType.text,
                            readOnly: true,
                            initialValue: d.content,
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
                        )
                       //-------

                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'التفسير : ',
                        style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 17.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextFormField(
                        controller: response,
                          keyboardType: TextInputType.text,
                          style: GoogleFonts.notoKufiArabic(
                              color: Colors.black,
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.w600
                          ),
                          cursorColor: Colors.black,
                          maxLines: 10,
                          decoration: InputDecoration(

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: ElevatedButton.icon(
                              label: Text(
                                'انتهى',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.white,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w600

                                ),
                              ),
                              icon:Image.asset(
                                'Assets/image/send.png',
                                color: Colors.white,
                                width: 25.0.w,
                                height: 25.0.h,
                              ) ,
                              onPressed: () async{

                                //Post response
                                if(response.value.text.trim().isEmpty)
                                  {
                                    showSnackBar(context, "لا يمكن ارسال تفسير فارغ");
                                  }else{

                                  try {
                                    LoadingIndicatorDialog().show(context,"جار ارسال التفسير");
                                    await addrespnse(d,response.value.text);
                                    String price =CastDreamPrice(d.dreamtype);
                                     print("Dream Price :"+price);

                                    bool IsPaid;

                                    IsPaid = await PayForMofasser(d.mo_id,price);
                                    if(IsPaid) {
                                      var tot , pa , res;
                                      List<String> balances = await GetMobalance();
                                      tot=balances[0];pa=balances[1];res=balances[2];

                                      LoadingIndicatorDialog().dismiss();


                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                          DProfile(HisId: d.mo_id,
                                            hisphoto: RegMo().MofaserImage(
                                                d.mo_id), total: tot
                                            , rest: res, paid: pa,)));
                                      showSnackBar(context,"تم ارسال التفسير");

                                      var player = await GetCstPlayer(d.useruid);
                                      var title  = "تم تفسير حلمك";
                                      var Content = "تم تفسير حلمك بنجاح";
                                      await SendNotification(player, title, Content);
                                    }
                                    else {
                                      LoadingIndicatorDialog().dismiss();
                                      showSnackBar(context," حدث خطأ , لم تتم اضافة الرصيد,يرحي معرفة الحلم والابلاغ لأداره");
                                      showSnackBar(context," يرجي اغلاق التطبيق واعادة تشغيله");
                                      //add log system to firebase.
                                    }
                                  } on Exception catch (e) {
                                    print(e);
                                   // showSnackBar(context," حدث خطأ , يرحي الابلاغ");
                                  }
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 10.0,bottom: 10.0).r,
                                primary: Colors.blue[400],
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
                            width: 20.0.w,
                          ),
                          ElevatedButton(
                            onPressed: () async {

                              var x = await SameClientList(d.useruid);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  SameClientDreamList(x)));
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 10.0).r,
                              primary: Colors.blue[400],
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0).w,
                                side: const BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            child: Text(
                              'احلام لنفس العميل ',
                              style: GoogleFonts.notoKufiArabic(
                                  color: Colors.white,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w600

                              ),
                            ),
                          ),
                        ],
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
  String CastDreamPrice(String dreamtype) {
    if (dreamtype == "dreamtype.normal") {
      return "50";
    }
    else if (dreamtype == "dreamtype.bronze") {
      return "66";
    }
    else if (dreamtype == "dreamtype.golden") {
      return "100";
    }
    else if (dreamtype == "dreamtype.instant") {
      return "132";
    }
    else {
      return "0";
    }
  }

  String castRoyaa(String dreamtype) {
    print(dreamtype);
    if(dreamtype == "dreamtype.normal"){ return "رؤية عادية" ;}
    else if (dreamtype == "dreamtype.bronze"){ return "رؤية قضية" ;}
    else if (dreamtype == "dreamtype.golden"){ return "رؤية ذهبية" ;}
    else if (dreamtype == "dreamtype.instant"){ return "رؤية فورية" ;}
    else {print(dreamtype);  return "تفسير الرؤية" ; }
  }



  String formattimepost(String time_post) {
    return time_post.replaceAll("\n", " ");
  }
}
