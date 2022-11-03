import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_rick_morty/screens/first_start_screen/widgets/start_screen_stack.dart';
import 'package:flutter_rick_morty/screens/second_filter_screen/characters_list.dart';
import 'first_filter_screen/characters_list.dart';
import 'first_start_screen/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Rick Morty',
      home: CharacterListSecond(),//StartScreenStack(),
    );
  }
}
