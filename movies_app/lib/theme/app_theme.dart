import 'package:flutter/material.dart';

class AppTheme {

  static Color primaryColor = Colors.pinkAccent;
  static Color secondaryColor = Colors.white12;
  static Color? tertiaryColor = Colors.indigo[12];


  static final appTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 0
    ),
  );
}