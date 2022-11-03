import 'package:flutter/material.dart';
import 'package:flutter_rick_morty/screens/second_filter_screen/widgets/left_element.dart';
import 'package:flutter_rick_morty/screens/second_filter_screen/widgets/right_element.dart';
import 'package:flutter_rick_morty/theme/text_theme.dart';

class Character {
  String status;
  String name;
  String type;
  String assetPath;
  Character(status, name, type, assetPath) {
    this.name = name;
    this.status = status;
    this.assetPath = assetPath;
    this.type = type;
  }
}

class CharactersListViewSecond extends StatefulWidget {
  @override
  _CharactersListViewSecondState createState() =>
      _CharactersListViewSecondState();
}

class _CharactersListViewSecondState extends State<CharactersListViewSecond> {
  var characters = [];
  List<Character> friends = [
    new Character(
        'ЖИВОЙ', 'Рик Санчез', 'Человек, Мужской', 'assets/images/char_1.png'),
    new Character('ЖИВОЙ', 'Директор Агенства', 'Человек, Мужской',
        'assets/images/char_2.png'),
    new Character(
        'ЖИВОЙ', 'Морти Смит', 'Человек, Мужской', 'assets/images/char_3.png'),
    new Character(
        'ЖИВОЙ', 'Саммер Смит', 'Человек, Женский', 'assets/images/char_4.png'),
    new Character('МЕРТВЫЙ', 'Альберт Эйнштейн', 'Человек, Мужской',
        'assets/images/char_5.png'),
    new Character('МЕРТВЫЙ', 'Алан Райлс', 'Человек, Мужской',
        'assets/images/char_6.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      child: ListView.builder(
        itemCount: friends.length ~/ 2,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LeftElement(friends, index * 2),
                  SizedBox(
                    width: 60,
                  ),
                  RightElement(friends, index * 2 + 1),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
