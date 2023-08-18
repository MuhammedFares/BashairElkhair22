import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../information/information_screen1.dart';

class Parent extends StatefulWidget {
  @override
  var x;
  Parent(s){
    x = s;
  }
  _ParentState createState() => _ParentState(x);
}

class _ParentState extends State<Parent> {
  ValueNotifier<bool> _notifier = ValueNotifier(false);

  _ParentState(s);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Directionality(
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
                  _notifier.value = true;
                  widget.x(true);
                }
                else {
                  _notifier.value = false;
                  widget.x(false);

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
                print("Client approved ? :"+ _notifier.value.toString());}
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _notifier.dispose();

    super.dispose();
  }
}
