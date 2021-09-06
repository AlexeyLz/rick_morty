import 'package:flutter/material.dart';
import 'package:flutter_ruck_morty/controllers/friend_list_builer.dart';
import '../styles/divider.dart';

class Friends extends StatelessWidget {
  Widget buttonAdd(context) {
    return SizedBox(
      width: 350,
      child: OutlinedButton.icon(
        onPressed: null,
        label: Text("ADD FRIEND", style: Theme.of(context).textTheme.button),
        icon: Icon(
          Icons.add,
          color: Colors.black,
        ),
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 455,
      padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Friends',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: 18),
          FriendsListBuiler(),
          buttonAdd(context),
          SizedBox(
            height: 10,
          ),
          Div(),
        ],
      ),
    );
  }
}
