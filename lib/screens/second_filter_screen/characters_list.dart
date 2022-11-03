import 'package:flutter/material.dart';
import 'package:flutter_rick_morty/components/text_characters_count.dart';
import 'package:flutter_rick_morty/screens/first_filter_screen/widgets/finder.dart';

import 'package:flutter_rick_morty/resources/icons.dart';
import 'package:flutter_rick_morty/screens/first_filter_screen/view_model.dart';
import 'package:flutter_rick_morty/screens/second_filter_screen/view_model.dart';
import 'package:flutter_rick_morty/theme/main_theme.dart';

import 'package:flutter_svg/flutter_svg.dart';

class CharacterListSecond extends StatefulWidget {
  @override
  _CharacterListSecondState createState() => _CharacterListSecondState();
}

class _CharacterListSecondState extends State<CharacterListSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: MainTheme.backGroundTheme(),
        padding: EdgeInsets.fromLTRB(16, 54, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Finder(),
            SizedBox(height: 24),
            Row(
              children: [
                TextComponents.textCharactersCount,
                SizedBox(width: 195),
                SvgPicture.asset(SvgIcons.bulletList)
              ],
            ),
            CharactersListViewSecond(),
          ],
        ),
      ),
    );
  }
}
