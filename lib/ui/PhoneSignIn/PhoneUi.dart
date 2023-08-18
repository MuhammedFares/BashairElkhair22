import 'package:bshair_elkher/ui/ModernUi/Snack.dart';
import 'package:bshair_elkher/ui/PhoneSignIn/verify.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'comp.dart';

class loginwithphoneno extends StatefulWidget {
  const loginwithphoneno({super.key});

  @override
  State<loginwithphoneno> createState() => _loginwithphonenoState();
}

class _loginwithphonenoState extends State<loginwithphoneno> {
  var countrycode = '+20';
  @override
  Widget build(BuildContext context) {
    final phonecon = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("تسجيل الدخول برقم الهاتف"),
        backgroundColor: Colors.blue,
      ),
      body: Directionality(
      textDirection: TextDirection.rtl,
      child: Form(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:

          Column(

              children: [
                const SizedBox(
                  height: 70,
                ),
                 Text(
                  'سوف تتلقي كود من 6 ارقام',
                  style: GoogleFonts.notoKufiArabic(
                    fontSize: 20.0.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: phonecon,
                    decoration: InputDecoration(
                        filled: true,
                        focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: bcolor)),
                        // enabledBorder:
                        //     UnderlineInputBorder(borderSide: BorderSide(color: bcolor)),
                        fillColor: Colors.white,
                        hintText: "ادخل رقم الهاتف ",
                        prefix: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black)),
                            onPressed: () {
                              showCountryPicker(
                                  context: context,
                                  countryListTheme: const CountryListThemeData(
                                      inputDecoration: InputDecoration(
                                        hintText: "بحث",
                                        labelText: "بحث عن كود الدوله",
                                      )),
                                  favorite: ['Egypt'],
                                  onSelect: (Country c) {
                                    countrycode = c.phoneCode.toString();
                                    setState(() {});
                                  });
                            },
                            child: Text(
                              countrycode,
                              style: TextStyle(fontSize: 17),
                            ))),
                  ),
                ),
                roundbutton(
                    title: "استمرار ",
                    tapfun: () {
                      var phone = countrycode+phonecon.text.toString();
                      if(phone.startsWith("+")){phone = phone;}
                      else{phone = "+"+phone;}
                      print(phone);
                      FirebaseAuth.instance.verifyPhoneNumber(
                          phoneNumber: phone,
                          verificationCompleted: (_) {},
                          verificationFailed: (e) {
                            print(e.toString());
                         //   showSnackBar(context,e.toString());
                          },
                          codeSent: (String verificationId, int? token) {
                            print("verification id : "+verificationId);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        verifycode(verificationId: verificationId)));
                          },
                          codeAutoRetrievalTimeout: (e) {
                            print(e.toString());
                            //showSnackBar(context,e.toString());
                          });
                    }),
              ]),
        ),
      ),
    ),
    );
  }
}