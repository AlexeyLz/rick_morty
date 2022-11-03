import 'package:flutter/material.dart';
import 'package:flutter_rick_morty/resources/images.dart';

import 'color_theme.dart';

class MainTheme {
  static BoxDecoration backGroundThemeStart() {
    return BoxDecoration(
      color: ColorThemes.mainBlackColor,
      image: DecorationImage(
        image: AssetImage(Images.background),
        fit: BoxFit.cover,
      ),
    );
  }

  static BoxDecoration backGroundTheme() {
    return BoxDecoration(
      color: ColorThemes.mainBlackColor,
    );
  }
}
