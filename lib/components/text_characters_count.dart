import 'package:flutter/material.dart';

import 'package:flutter_rick_morty/theme/color_theme.dart';


class TextComponents {
  static var textCharactersCount = Text(
    'Всего персонажей: 200',
    style: TextStyle(
      fontSize: 10,
      fontStyle: FontStyle.normal,
      letterSpacing: 1.5,
      fontWeight: FontWeight.w500,
      color: ColorThemes.elementsColor,
    ),
  );
}