import 'package:flutter/material.dart';
import 'package:flutter_rick_morty/screens/second_filter_screen/view_model.dart';
import 'package:flutter_rick_morty/screens/second_filter_screen/widgets/textUnder.dart';

class RightElement extends StatelessWidget {
  RightElement(List<Character> friends, int index) {
    this.friends = friends;
    this.index = index;
  }
  List<Character> friends;
  int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                friends[index].assetPath,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 25),
        TextUnder(friends, index),
      ],
    );
  }
}
