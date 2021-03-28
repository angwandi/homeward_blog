import 'package:flutter/material.dart';

///App theme for app specific theme customisation
class AppTheme {
  static ThemeData light() {
    return ThemeData(
      primaryColor: _primaryColor,
      accentColor: _accentColor,
      fontFamily: 'Poppins',
      dividerTheme: _dividerTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: _primaryColor,
      accentColor: _accentColor,
      fontFamily: 'Poppins',
      dividerTheme: _dividerTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
    );
  }

  static const _primaryColor = Color(0xff163d76);
  static const _accentColor = Color(0xff03cea4);

  static const _dividerTheme = DividerThemeData(
    indent: 16.0,
    space: 0.0,
  );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: _primaryColor,
      onPrimary: _accentColor,
    ),
  );
}
