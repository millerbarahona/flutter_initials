import 'package:flutter/cupertino.dart' show Color;
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.pink;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor, //color primario
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 0,
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
    ), //appbar tema
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primaryColor,
      )
    ),    
  );
}
