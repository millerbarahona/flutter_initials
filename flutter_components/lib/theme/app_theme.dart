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
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      )
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 2
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 2
      )
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primaryColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      border: OutlineInputBorder(        
        borderRadius: BorderRadius.all(Radius.circular(10))
      )
    )
  );
}
