import 'package:flutter/material.dart';
import 'package:homeward_blog/app/app.dart';
import 'package:homeward_blog/backend/backend.dart';
import 'package:provider/provider.dart';

/*void main() {
  runApp(HomewardApp());
}*/

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Backend(),
      child: HomewardApp(),
    ),
  );
}
