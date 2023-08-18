
import 'package:bshair_elkher/ui/ModernUi/Snack.dart';
import 'package:bshair_elkher/ui/nav_bar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Notifications/onesignal_flutter.dart';



class SendNot extends StatefulWidget {

  var dtype;
  SendNot(xt){
    dtype = xt;

  }

  @override
  State<SendNot> createState() => _SendNotState(dtype);
}

class _SendNotState extends State<SendNot> {
  _SendNotState(dtype);
  String SelectedValue = "ظهرا";
  String SelectedValue2 = "ظهرا";
  TextEditingController from = TextEditingController();
  TextEditingController to = TextEditingController();
  @override
  Widget build(BuildContext context) {

    const List<String> list = <String>["ظهرا","صباحا","مساء"];


    return Scaffold(
      bottomNavigationBar: bottomNavBar(
        onTap: (index) {
          if (index==2){
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
                'Assets/image/darkback.png',
                width: double.infinity,
                height: 1800.0.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 65.0,top: 35.0).r,
                child: Text(
                  textAlign: TextAlign.center,
                  'ارسال أشعار بالتواجد',
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 23.0.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 36.0,top: 135.0).r,
                child: Text(
                  textAlign: TextAlign.center,
                  'نص الاشعار',
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 23.0.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 36.0,top: 175.0).r,
                child: Text(
                  textAlign: TextAlign.center,
                  castMo(widget.dtype),

                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.amberAccent,
                    fontSize: 23.0.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 36.0,top: 215.0).r,
                child: Text(
                  textAlign: TextAlign.center,
                  'متواجد من الساعة ',
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.amberAccent,
                    fontSize: 23.0.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
            padding: const EdgeInsets.only(right: 66.0,top: 265.0).r,
            child:   SizedBox(
                width: 60.0.w,
                height: 50.0.h,
                child: TextFormField(
                    controller: from,
                    keyboardType: TextInputType.text,
                    style: TextStyle(

                        fontSize: 20.0.sp,
                        fontWeight: FontWeight.w600
                    ),
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(15.0).w,
                      ),
                      errorBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15).w,
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15).w,
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
                        borderRadius: BorderRadius.circular(15.0).w,
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
          ),
              //Drop 1
              Padding(
            padding: const EdgeInsets.only(right: 166.0,top: 269.0).r,
            child:   DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              hint: Row(
                children: const [
                  Icon(
                    Icons.list,
                    size: 16,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      'Select Item',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              items: list
                  .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  textAlign: TextAlign.center,
                  style: const  TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ))
                  .toList(),
              value: SelectedValue,
              onChanged: setdropone,
              buttonStyleData: ButtonStyleData(
                height: 50,
                width: 160,
                padding: const EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.redAccent,
                ),
                elevation: 2,
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                iconSize: 14,
                iconEnabledColor: Colors.yellow,
                iconDisabledColor: Colors.grey,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 200,
                width: 200,
                padding: null,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.redAccent,
                ),
                elevation: 8,
                offset: const Offset(-20, 0),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(40),
                  thickness: MaterialStateProperty.all<double>(6),
                  thumbVisibility: MaterialStateProperty.all<bool>(true),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                padding: EdgeInsets.only(left: 14, right: 14),
              ),
            ),
          ),
          ),

              Padding(
                padding: const EdgeInsets.only(right: 36.0,top: 325.0).r,
                child: Text(
                  textAlign: TextAlign.center,
                  'إلي الساعة ',
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.amberAccent,
                    fontSize: 23.0.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              //To hour
              Padding(
                padding: const EdgeInsets.only(right: 66.0,top: 370.0).r,
                child:   SizedBox(
                  width: 60.0.w,
                  height: 50.0.h,
                  child: TextFormField(
                      controller: to,
                      keyboardType: TextInputType.text,
                      style: TextStyle(

                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.w600
                      ),
                      textAlign: TextAlign.center,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15.0).w,
                        ),
                        errorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).w,
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        focusedErrorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).w,
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
                          borderRadius: BorderRadius.circular(15.0).w,
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
              ),

              //Drop 2
              Padding(
                padding: const EdgeInsets.only(right: 166.0,top: 370.0).r,
                child:   DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [
                        Icon(
                          Icons.list,
                          size: 16,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            '',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: list
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        textAlign: TextAlign.center,
                        style: const  TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                        .toList(),
                    value: SelectedValue2,
                    onChanged: setdroptwo,
                    buttonStyleData: ButtonStyleData(
                      height: 50,
                      width: 160,
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        color: Colors.redAccent,
                      ),
                      elevation: 2,
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: Colors.yellow,
                      iconDisabledColor: Colors.grey,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 200,
                      padding: null,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.redAccent,
                      ),
                      elevation: 8,
                      offset: const Offset(-20, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 25.0.h,
              ),

              //Send Btn
              Padding(
            padding: const EdgeInsets.only(top: 460.0).r,
            child: Container(
                width: double.infinity-20,
                height: 40.0.h,
                margin: const EdgeInsets.only(left: 70.0 ,right: 60.0).r,
                decoration: BoxDecoration(
                  color: Colors.redAccent ,
                  borderRadius: BorderRadius.circular(15.0).w,

                ),
                child: MaterialButton(
                  onPressed: () async {

                  var f =  "${castMo(widget.dtype)} متواجد من الساعة ${from.text} $SelectedValueالي الساعة ${to.text} $SelectedValue2";
                    try {
                      await SendGlobalNotification("اشعار بالتواجد", f);
                      Navigator.pop(context);
                      showSnackBar(context, "تم ارسال الاشعار بنجاح");
                    } on Exception catch (e) {
                    }
                  },
                  child:Text(
                    'ارسال',
                    style: GoogleFonts.notoKufiArabic(
                        color: Colors.white,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }

  setdropone(value) {

    setState(() {
      SelectedValue = value;
    });
    print(SelectedValue);
  }
  setdroptwo(value) {

    setState(() {
      SelectedValue2 = value;
    });
    print(SelectedValue2);
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