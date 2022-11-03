import 'package:flutter/material.dart';

import 'color_theme.dart';

class TextThemes {
  static var textAppearanceBody_1 = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.44,
    color: ColorThemes.mainBlackColor,
  );

  static var textName = TextStyle(
    color: ColorThemes.nameColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.5,
  );

  static var textNameSecond = TextStyle(
    color: ColorThemes.nameColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 0.1,
  );

  static var textAppearanceOverline = TextStyle(
    color: ColorThemes.statusColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 10,
    letterSpacing: 1.5,
  );

  static var textAppearanceCaption = TextStyle(
    color: ColorThemes.additionalTextColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.5,
  );
}
