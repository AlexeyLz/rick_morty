import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ruck_morty/screens/avatar_and_name.dart';
import 'package:flutter_ruck_morty/screens/friends_list.dart';
import 'package:flutter_ruck_morty/screens/select_type.dart';
import 'styles/theme.dart';
import 'screens/media.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFFF5F5F5),
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      title: 'Flutter Project',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget appBar() {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      title: Text(
        "Profile",
        style: Theme.of(context).textTheme.headline6,
      ),
      actions: [
        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        padding: const EdgeInsets.only(top: 24),
        children: <Widget>[
          AvatarAndName(),
          SelectType(),
          Friends(),
          Media(),
        ],
      ),
    );
  }
}
