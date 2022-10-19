import 'package:flutter/material.dart';

String _defaultFont = 'Poppins';
String _logoFont = 'Montserrat';

class FontStyles {
  TextStyle get headingDisplay => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 96,
    fontWeight: FontWeight.w700,
   
  );

  TextStyle get headingXLarge => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 64,
    fontWeight: FontWeight.w700,

  );

  TextStyle get headingLarge => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 48,
    fontWeight: FontWeight.w700,

  );

  TextStyle get headingMedium => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Colors.white

  );

  TextStyle get headingSmall => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 24,
    fontWeight: FontWeight.w700,

  
  );

  TextStyle get headingXSmall => TextStyle(
    fontFamily: _logoFont,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  TextStyle get headingOnImage => TextStyle(
    fontFamily: _logoFont,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  TextStyle get subtitleLarge => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 32,
    fontWeight: FontWeight.w500,
  );

  TextStyle get subtitleSmall => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  TextStyle get paragraphLarge => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  TextStyle get paragraphXLarge => TextStyle(
    fontFamily: _defaultFont,
    fontWeight: FontWeight.bold,
  );

  TextStyle get paragraphSmall => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    
  );


  TextStyle get caption => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  TextStyle get captionSmall => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  TextStyle get button => TextStyle(
    fontFamily: _defaultFont,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  TextStyle get buttonLogin => TextStyle(
    fontFamily: _logoFont,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  TextStyle get logoTitle => TextStyle(
    fontFamily: _logoFont,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

}