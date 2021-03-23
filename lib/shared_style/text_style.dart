import 'package:flutter/material.dart';
import 'package:homeward_blog/shared_style/app_colors.dart';

// Box Decorations
BoxDecoration fieldDecortaion = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
);

BoxDecoration disabledFieldDecortaion = BoxDecoration(
    borderRadius: BorderRadius.circular(5), color: Colors.grey[100]);

const kTextFieldDecorations = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: homeward_primary_dark, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: homeward_primary, width: 3.0),
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
  ),
);

//Text variables

const headerStyle = TextStyle(fontSize: 35, fontWeight: FontWeight.w900);
const subHeaderStyle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500);
const TextStyle buttonTitleTextStyle = const TextStyle(
    fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.white);

// Field Variables

const double fieldHeight = 55;
const double smallFieldHeight = 40;
const double inputFieldBottomMargin = 30;
const double inputFieldSmallBottomMargin = 0;
const EdgeInsets fieldPadding = const EdgeInsets.symmetric(horizontal: 15);
const EdgeInsets largeFieldPadding =
    const EdgeInsets.symmetric(horizontal: 15, vertical: 15);
