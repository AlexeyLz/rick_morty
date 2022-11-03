import 'package:flutter/material.dart';
import 'package:flutter_rick_morty/screens/second_filter_screen/view_model.dart';
import 'package:flutter_rick_morty/theme/text_theme.dart';

class TextUnder extends StatelessWidget {
  TextUnder(List<Character> friends, int index) {
    this.friends = friends;
    this.index = index;
  }
  List<Character> friends;
  int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          friends[index].status,
          style: TextThemes.textAppearanceOverline,
        ),
        SizedBox(height: 5),
        Text(
          friends[index].name,
          style: TextThemes.textNameSecond,
        ),
        SizedBox(height: 5),
        Text(friends[index].type, style: TextThemes.textAppearanceCaption,),
      ],
    );
  }
}
