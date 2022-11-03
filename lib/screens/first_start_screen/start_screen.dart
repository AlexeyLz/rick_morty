import 'package:flutter/material.dart';


import 'package:flutter_rick_morty/screens/first_start_screen/widgets/start_screen_stack.dart';
import 'package:flutter_rick_morty/theme/main_theme.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: MainTheme.backGroundThemeStart(),
        child: Center(
          child: StartScreenStack(),
        ),
      ),
    );
  }
}
