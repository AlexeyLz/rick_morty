import 'package:flutter/material.dart';
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

class CharactersListView extends StatefulWidget {
  @override
  _CharactersListViewState createState() => _CharactersListViewState();
}

class _CharactersListViewState extends State<CharactersListView> {
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
          itemCount: friends.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Image.asset(
                friends[index].assetPath,
              ),
              subtitle: Text(
                friends[index].type,
                style: TextThemes.textAppearanceCaption,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    friends[index].status,
                    style: TextThemes.textAppearanceOverline
                  ),
                  Text(
                    friends[index].name,
                    style: TextThemes.textName,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
