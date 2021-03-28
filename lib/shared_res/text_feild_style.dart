import 'package:flutter/material.dart';

import 'app_colors.dart';

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
