import 'package:flutter/material.dart';
import 'package:homeward_blog/app/theme.dart';
import 'package:homeward_blog/backend/backend.dart';
import 'package:homeward_blog/screens/blog_list_screen.dart';
import 'package:provider/provider.dart';

class HomewardApp extends StatelessWidget {
  const HomewardApp({
    required this.backend,
  });

  final Backend backend;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      home: Provider.value(
        value: backend,
        child: BlogListScreen(),
      ),
    );
  }
}
