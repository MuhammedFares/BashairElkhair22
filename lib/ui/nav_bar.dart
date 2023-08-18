import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import 'NewNavBar.dart';

int currentIndex = 0 ;
Widget bottomNavBar2({required onTap}) => BottomNavigationBar(
  onTap: onTap,
  selectedFontSize: 1.0.h,
  backgroundColor: Colors.blue,
  iconSize: 50.0.w,
  currentIndex: currentIndex,
  items: const [
    BottomNavigationBarItem(
      icon:Icon(
        Icons.arrow_back_ios_sharp,
        color: Colors.white,
      ) ,
      label: '',
    ),
    BottomNavigationBarItem(

      icon:Icon(

        Icons.notifications,

        color: Colors.white,

      ) ,

      label: '',

    ),
    BottomNavigationBarItem(

      icon:Icon(

        Icons.home,

        color: Colors.white,

      ) ,

      label: '',

    ),
  ],
);
Widget bottomNavBarCommentator2({required onTap}) => BottomNavigationBar(
  onTap: onTap,
  selectedFontSize: 1.0.h,
  backgroundColor: Colors.blue,
  iconSize: 50.0.w,
  currentIndex: currentIndex,
  items: [
    BottomNavigationBarItem(
      icon:Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Colors.white,
      ) ,
      label: '',
    ),
    BottomNavigationBarItem(

      icon:Icon(

        Icons.notifications,

        color: Colors.white,

      ) ,

      label: '',

    ),
    BottomNavigationBarItem(

      icon:Icon(

        Icons.home,

        color: Colors.white,

      ) ,

      label: '',

    ),
  ],

);

Widget bottomNavBarCommentator({required onTap}) =>  SweetNavBar(
  backgroundColor: Colors.blue,
  onTap: onTap,
  paddingBackgroundColor: Colors.transparent,
  //paddingBackgroundColor: Colors.red,

  items: [
    SweetNavBarItem(
        sweetActive: const Icon(Icons.arrow_back_ios_new_outlined),
        sweetIcon: const Icon(
          Icons.arrow_back_ios_new_outlined,
        ),
        sweetLabel: 'back',
        sweetBackground: Colors.transparent),
    SweetNavBarItem(
        sweetActive: const Icon(Icons.arrow_back_ios_new_outlined),
        sweetIcon: const Icon(
          Icons.share,
        ),
        sweetLabel: 'notifications',
        sweetBackground: Colors.transparent),
    SweetNavBarItem(
        sweetIcon: const Icon(
          Icons.home,
        ),
        sweetLabel: 'back',
        sweetBackground: Colors.transparent),

  ],

);

Widget bottomNavBar({required onTap}) =>  SweetNavBar(
  backgroundColor: Colors.blue,
onTap: onTap,
  paddingBackgroundColor: Colors.transparent,
  //paddingBackgroundColor: Colors.red,

  items: [
    SweetNavBarItem(
        sweetActive: const Icon(Icons.arrow_back_ios_new_outlined),
        sweetIcon: const Icon(
          Icons.arrow_back_ios_new_outlined,
        ),
        sweetLabel: 'back',
        sweetBackground: Colors.transparent),
    SweetNavBarItem(
        sweetActive: const Icon(Icons.arrow_back_ios_new_outlined),
        sweetIcon: const Icon(
          Icons.share,
        ),
        sweetLabel: 'notifications',
        sweetBackground: Colors.transparent),
    SweetNavBarItem(
        sweetIcon: const Icon(
          Icons.home,
        ),
        sweetLabel: 'back',
        sweetBackground: Colors.transparent),

  ],

);

Widget star () =>  Row(

  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset(
      'Assets/image/star.png',
      width: 50.0.w,
      height: 50.0.h,
    ),
    SizedBox(
      width: 15.0.w,
    ),
    Image.asset(
      'Assets/image/star.png',
      width: 50.0.w,
      height: 50.0.h,
    ),
    SizedBox(
      width: 15.0.w,
    ),
    Image.asset(
      'Assets/image/star.png',
      width: 50.0.w,
      height: 50.0.h,
    ),
    SizedBox(
      width: 15.0.w,
    ),
    Image.asset(
      'Assets/image/star.png',
      width: 50.0.w,
      height: 50.0.h,
    ),
    SizedBox(
      width: 15.0.w,
    ),
    Image.asset(
      'Assets/image/star.png',
      width: 50.0.w,
      height: 50.0.h,
    ),
    SizedBox(
      width: 15.0.w,
    ),
  ],
);
Widget ModernStar () =>  Row(

  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset(
      'Assets/image/star.png',
      width: 35.0.w,
      height: 35.0.h,
    ),
    SizedBox(
      width: 6.0.w,
    ),

    Image.asset(
      'Assets/image/star.png',
      width: 35.0.w,
      height: 35.0.h,
    ),
    SizedBox(
      width: 6.0.w,
    ),
    Image.asset(
      'Assets/image/star.png',
      width: 35.0.w,
      height: 35.0.h,
    ),
    SizedBox(
      width: 6.0.w,
    ),
    Image.asset(
      'Assets/image/star.png',
      width: 35.0.w,
      height: 35.0.h,
    ),
    SizedBox(
      width: 6.0.w,
    ),
    Image.asset(
      'Assets/image/star.png',
      width: 35.0.w,
      height: 35.0.h,
    ),
    SizedBox(
      width: 6.0.w,
    ),
  ],
);
Widget Line ()=>   Row(

  mainAxisAlignment: MainAxisAlignment.center,
  children: const [
    Divider(
      color: Colors.redAccent, //color of divider
      height: 50, //height spacing of divider
      thickness: 3, //thickness of divier line
      indent: 25, //spacing at the start of divider
      endIndent: 25, //spacing at the end of divider
    )
  ],
);


Widget choiceCommentatorStar5 () =>  Row(

  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset(
      'Assets/image/star3.png',
      width: 20.0.w,
      height: 20.0.h,
      color: Colors.white,
    ),
    SizedBox(
      width: 5.0.w,
    ),
    Image.asset(
      'Assets/image/star3.png',
      width: 20.0.w,
      height: 20.0.h,
      color: Colors.white,
    ),
    SizedBox(
      width: 5.0.w,
    ),
    Image.asset(
      'Assets/image/star3.png',
      width: 20.0.w,
      height: 20.0.h,
      color: Colors.white,
    ),
    SizedBox(
      width: 5.0.w,
    ),
    Image.asset(
      'Assets/image/star3.png',
      width: 20.0.w,
      height: 20.0.h,
      color: Colors.white,
    ),
    SizedBox(
      width: 5.0.w,
    ),
    Image.asset(
      'Assets/image/star3.png',
      width: 20.0.w,
      height: 20.0.h,
      color: Colors.white,
    ),
  ],
);

Widget choiceCommentatorStar2 () =>  Row(

  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset(
      'Assets/image/star3.png',
      width: 20.0.w,
      height: 20.0.h,
      color: Colors.white,
    ),
    SizedBox(
      width: 5.0.w,
    ),
    Image.asset(
      'Assets/image/star3.png',
      width: 20.0.w,
      height: 20.0.h,
      color: Colors.white,
    ),
    SizedBox(
      width: 5.0.w,
    ),
  ],
);

Widget choiceCommentatorStar3 () =>  Row(

  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset(
      'Assets/image/star3.png',
      width: 20.0.w,
      height: 20.0.h,
      color: Colors.white,
    ),
    SizedBox(
      width: 5.0.w,
    ),
    Image.asset(
      'Assets/image/star3.png',
      width: 20.0.w,
      height: 20.0.h,
      color: Colors.white,
    ),
    SizedBox(
      width: 5.0.w,
    ),
    Image.asset(
      'Assets/image/star3.png',
      width: 20.0.w,
      height: 20.0.h,
      color: Colors.white,
    ),
    SizedBox(
      width: 5.0.w,
    ),
  ],
);


Widget NumberofContainer ({required Text,}) => Container(
  width: 60.0.w,
  height: 60.0.h,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50.0).w,
    border: Border.all(
      color: HexColor('FABC05'),
      width: 8.0.w,
    ),
  ),
  child: Text(
    textAlign: TextAlign.center,
    '$Text',
    style: TextStyle(
        color: Colors.white,
        fontSize: 35.0.sp,
        fontWeight: FontWeight.w600
    ),
  ),
);


