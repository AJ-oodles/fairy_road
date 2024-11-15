import 'package:fairy_road/screens/home.dart';
import 'package:fairy_road/theme/theme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fairy ',
      theme: AppTheme.lightTheme,
      home: HomePage(),
    );
  }
}
