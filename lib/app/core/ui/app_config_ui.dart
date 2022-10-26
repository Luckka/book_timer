
import 'package:flutter/material.dart';

class AppConfigUi {

  AppConfigUi._();

  static const MaterialColor _primarySwatch =  MaterialColor(0XFF22234D, {
    50: Color(0XFF1f2045),
    100: Color(0XFF1b1c3e),
    200: Color(0XFF181936),
    300: Color(0XFF14152e),
    400: Color(0XFF111227),
    500: Color(0XFF0e0e1f),
    600: Color(0XFF0a0a17),
    700: Color(0XFF07070f),
    800: Color(0XFF030308),
    900: Color(0XFF000000)
  });

  static final ThemeData theme = ThemeData(
    primarySwatch: _primarySwatch,
    primaryColor: const Color(0XFF22234D),
    primaryColorLight: const Color(0XFF453A8F),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey)
      ),
      labelStyle: TextStyle(color: Colors.black)
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0XFFEFC429),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      )
    )
  );
}