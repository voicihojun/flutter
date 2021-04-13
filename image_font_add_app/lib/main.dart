import 'package:flutter/material.dart';
import 'ImageWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ImageWidgetApp(),
    );
  }
}