import 'package:flutter/material.dart';

Color _primaryColor = Colors.deepOrangeAccent[100]!;

final ThemeData themeData = ThemeData(
  primaryColor: _primaryColor,
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.black,
      fontSize: 24,
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontSize: 18,
    ),
    headline3: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
    headline4: TextStyle(
      color: Colors.black,
      fontSize: 14,
    ),
    bodyText1: TextStyle(fontSize: 18),
    bodyText2: TextStyle(fontSize: 16),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: _primaryColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    focusColor: _primaryColor,
    border: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: _primaryColor,
        width: 2,
      ),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
  ),
);
