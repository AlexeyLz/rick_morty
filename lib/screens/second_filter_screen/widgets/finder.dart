import 'package:flutter/material.dart';
import 'package:flutter_rick_morty/resources/icons.dart';
import 'package:flutter_rick_morty/theme/color_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Finder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19),
      decoration: BoxDecoration(
        color: ColorThemes.secondBlackColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      height: 48,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            SvgIcons.find,
            color: ColorThemes.elementsColor,
          ),
          SizedBox(width: 18),
          Expanded(
            child: TextField(
              onChanged: (text) {},
              decoration: InputDecoration(
                hintText: 'Найти персонажа',
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.44,
                  color: ColorThemes.elementsColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          VerticalDivider(
            color: ColorThemes.elementsColor,
            thickness: 1,
            indent: 12,
            endIndent: 12,
          ),
          SvgPicture.asset(
            SvgIcons.filterAndSort,
            color: ColorThemes.elementsColor,
          )
        ],
      ),
    );
  }
}
