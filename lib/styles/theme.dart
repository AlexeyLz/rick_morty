import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.black,
    buttonColor: Color(0xFF6200EE),
    dividerColor: Color(0xFF212121),
    textSelectionColor: Color(0xFFF2E7FE) ,
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 48.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline4: TextStyle(
        fontSize: 34.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.25,
      ),
      headline5: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline6: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.15,
          color: Colors.black),
      subtitle1: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.1,
      ),
      button: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.5,
      ),
      bodyText1: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.44,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.25,
      ),
      caption: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.5,
      ),
      overline: TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        height: 16,
        letterSpacing: 1.5,
      ),
    ),
  );
}
