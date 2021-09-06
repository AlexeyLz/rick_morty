import 'package:flutter/material.dart';

import '../classes/friend.dart';

class FriendsListBuiler extends StatefulWidget {
  @override
  _FriendsListBuilerState createState() => _FriendsListBuilerState();
}

class _FriendsListBuilerState extends State<FriendsListBuiler> {
  List<Friend> list() {
    List<Friend> friends = [];

    friends.add(
      new Friend('Corey George', 'Developer', 'assets/images/corey.png'),
    );
    friends.add(
      new Friend('Ahmad Vetrovs', 'Developer', 'assets/images/ahmad.png'),
    );
    friends.add(
      new Friend('Cristofer Workman', 'Workman', 'assets/images/cristofer.png'),
    );
    friends.add(
      new Friend('Tiana Korsgaard', 'Developer', 'assets/images/tiana.png'),
    );

    return friends;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 21),
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          indent: 16,
          endIndent: 0,
          color: Theme.of(context).dividerColor,
        ),
        shrinkWrap: true,
        itemCount: list().length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(
              list()[index].assetPath,
              height: 40,
              width: 40,
            ),
            title: Text(list()[index].name,
                style: Theme.of(context).textTheme.subtitle1),
            trailing: Icon(
              Icons.close,
              color: Colors.red[200],
            ),
            subtitle: Text(
              list()[index].role,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          );
        },
      ),
    );
  }
}
