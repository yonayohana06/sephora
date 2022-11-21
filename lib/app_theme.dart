import 'package:flutter/material.dart';

class AppTheme {
  ///Colors
  static const primary = Color(0xFF2F82FF);
  static const secondary = Color(0xFFFFFFFF);
  static const tertiary = Colors.blueGrey;
  static const bgColor = Color(0xFFF3F7FD);
  static const inputBorderColor = Color(0xFF98C1FF);
  static const inputBorderErrorColor = Colors.red;

  ///Button
  static const buttonRadius = 10.0;

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      fixedSize: Size(100, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(buttonRadius),
      ),
    ),
  );

  /// Input
  static const inputRadius = 10.0;
  static final inputStyle = InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderColor),
      borderRadius: BorderRadius.circular(inputRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderColor),
      borderRadius: BorderRadius.circular(inputRadius),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderColor),
      borderRadius: BorderRadius.circular(inputRadius),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderColor),
      borderRadius: BorderRadius.circular(inputRadius),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderErrorColor),
      borderRadius: BorderRadius.circular(inputRadius),
    ),
    filled: true,
    fillColor: Colors.white,
  );

  static final lightTheme = ThemeData(
    elevatedButtonTheme: elevatedButtonTheme,
    // inputDecorationTheme: inputStyle,
    primaryColor: primary,
    scaffoldBackgroundColor: bgColor,
  );
}
