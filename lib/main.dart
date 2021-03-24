import 'package:flutter/material.dart';
import 'package:homeward_blog/app/app.dart';
import 'package:homeward_blog/backend/backend.dart';

void main() {
  final backend =
      Backend("https://60585b2ec3f49200173adcec.mockapi.io/api/v1/");
  runApp(HomewardApp(backend: backend));
}
