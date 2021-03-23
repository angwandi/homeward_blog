import 'package:flutter/material.dart';
import 'package:homeward_blog/routes/route_names.dart';
import 'package:homeward_blog/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Color(0xff163d76),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xff163d76),
          //button themes
        ),
      ),
      builder: (context, child) => Navigator(
        onGenerateRoute: generateRoute,
        initialRoute: LoginRoute,
      ),
    );
  }
}
