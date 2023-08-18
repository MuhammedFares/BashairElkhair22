
import 'package:bshair_elkher/ui/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


class WhoUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Image.asset(
                'Assets/image/darkback.png',
                width: double.infinity,
                height: 1070.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 95.0,top: 35.0).r,
                child: Text(
                  ' بشائر الخير ',
                  style: GoogleFonts.notoKufiArabic(
                    fontSize: 35.0.sp,
                    fontWeight: FontWeight.w400,
                    //fontFamily: 'Outfit-Medium.ttf',
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 95.0,top: 95.0).r,
                child: Text(
                  '\" يَا أَبَتِ هَٰذَا تَأْوِيلُ رُؤْيَايَ\"',
                  style: GoogleFonts.notoKufiArabic(
                      color: HexColor('FABC05'),
                      fontSize: 14.0.sp
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 95.0,top: 125.0).r,
                child: Text(
                  '\" من نحن \"' ,
                  style: GoogleFonts.notoKufiArabic(
                    fontSize: 35.0.sp,
                    fontWeight: FontWeight.w500,
                    //fontFamily: 'Outfit-Medium.ttf',
                    color: HexColor('55e8Fc'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0,right: 35.0,top: 215.0).r,
                child: Column(

                  children: [
                    Text(
                      ' - التطبيق يقدم خدمه مميزه لتفسير الاحلام أون لاين . تمتاذ بالخصوصيه '
                          'و السريه التامه للعميل . ',
                      style: GoogleFonts.notoKufiArabic(
                        color: Colors.white,
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Text(
                      ' - يمكنك اختيار نوع الخدمه التى تناسبك  '
                          '(رؤيا عاديه - فضيه - ذهبيه - فوريه). ',
                      style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    Text(
                      '- كما يمكنك اختيار مفسرك المفضل و الدردشه مع المفسر قبل تفسير حلمك .',
                      style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    Text(
                      '- التطبيق يحتوى على نخبه من المفسرين الموثوق فيهم واهل الخبره'
                          ' و علم (يمكنك الاطلاع عليهم و على سيرتهم الذاتيه داخل التطبيق).',
                      style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    Text(
                      '- التطبيق يعطيك كامل الحريه في كتابه حلمك مهما كان طولة دون تقييدك بعدد حروف محدده وهذه ميزه ممتاذه'
                          ' وهذه الميزه ينفرد بها التطبيق وهي لجميع انواع الاحلام بالتطبيق . .',
                      style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    Text(
                      '- يتم الدخول للتطبيق عن طريق احدى مواقع التواصل الاجتماعى '
                          'حتى نحافظ على حسابك و عدم وقوعك فى نسيان كلمه السر او بيانات الدخول .',
                      style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(
                      height: 40.0.h,
                    ),
                    Text(
                      'نتمنى لكم أسعد الاوقات داخل التطبيق .. ',
                      style: GoogleFonts.notoKufiArabic(
                          color: Colors.white,
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(
                      height: 40.0.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40.0.h,
                      margin: const EdgeInsets.only(left: 70.0 ,right: 50.0).r,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8.0).w,

                      ),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.pop(context);
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                          },
                        child:Text(
                          'رجوع',
                          style: GoogleFonts.notoKufiArabic(
                              color: Colors.white,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
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
