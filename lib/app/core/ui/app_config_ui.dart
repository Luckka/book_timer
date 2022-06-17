
import 'package:flutter/material.dart';

class AppConfigUi {
  AppConfigUi._();


  static const MaterialColor _primarySwatch = MaterialColor( 0xff6033d4,{
    50: Color(0xff562ebf),
    100: Color(0xff4d29aa),
    200: Color(0xff432494),
    300: Color(0xff3a1f7f),
    400: Color(0xff301a6a),
    500: Color(0xff261455),
    600: Color(0xff1d0f40),
    700: Color(0xff130a2a),
    800: Color(0xff0a0515),
    900: Color(0xff000000),

  });


  static final ThemeData theme = ThemeData(
    primarySwatch: _primarySwatch,
    primaryColor: const Color(0xff6033d4),
    primaryColorLight: const Color(0xff7047d8),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color:Colors.grey)
      ),
      labelStyle: TextStyle(color: Colors.black)
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      )
    )
  );
}