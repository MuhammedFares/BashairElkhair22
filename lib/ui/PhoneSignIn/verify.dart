
// ignore_for_file: use_build_context_synchronously

import 'package:bshair_elkher/ui/ModernUi/Snack.dart';
import 'package:bshair_elkher/ui/instructions/instructions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../Database/DB.dart';
import '../Tools/RegID.dart';
import 'comp.dart';

class verifycode extends StatefulWidget {
  final String verificationId;
  const verifycode({super.key, required this.verificationId});

  @override
  State<verifycode> createState() => _verifycodeState();
}

class _verifycodeState extends State<verifycode> {
  bool loading = false;

  var code = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الدخول"),
        backgroundColor: bcolor,
      ),
      body: Form(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                "تم ارسال الكود الي هاتفك ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const Text(
                "يرجي ادخال الكود من اليسار لليمين",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Pinput(
                  pinAnimationType: PinAnimationType.fade,
                  length: 6,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  defaultPinTheme: PinTheme(
                    height: 50,
                    textStyle: GoogleFonts.urbanist(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: bcolor, width: 2)),
                  ),
                  onChanged: (value) async {
                    code = value;

                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              roundbutton(
                  title: "الدخول ",
                  tapfun: () async {
                    final tokencredidential = PhoneAuthProvider.credential(
                        verificationId: widget.verificationId, smsCode: code);


                    try {
                    var result =  await FirebaseAuth.instance
                          .signInWithCredential(tokencredidential);

                    var Uid =  result.user?.uid;
                    await RegID().WriteId(Uid);
                    await AssignFirstLogin();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Instructions()));
                    } catch (e) {
                      print(e.toString());

                      Navigator.pop(context);
                      showSnackBar(context, "الكود او رقم الهاتف خطأ");
                    }


                    print(code);
                  }),
            ],
          )),
    );
  }
}