import 'package:flutter/material.dart';
import 'package:homeward_blog/app/theme.dart';

import 'file:///D:/dems/Projects/interviews/homeward/homeward_blog/lib/screens/login/login_screen.dart';

class HomewardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      home: LoginScreen(),
    );
  }
}
