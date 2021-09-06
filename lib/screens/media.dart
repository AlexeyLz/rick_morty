import 'package:flutter/material.dart';
import 'package:flutter_ruck_morty/controllers/images_list.dart';

class Media extends StatelessWidget {
  Widget buttonDel(context) {
    return SizedBox(
      width: 156,
      height: 36,
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          "DELETE",
          style: Theme.of(context).textTheme.button.apply(
                color: Theme.of(context).primaryColor,
              ),
        ),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Theme.of(context).buttonColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonAdd(context) {
    return SizedBox(
      width: 156,
      height: 36,
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          "ADD",
          style: Theme.of(context).textTheme.button.apply(
                color: Theme.of(context).buttonColor,
              ),
        ),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 490,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'My media',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          ImagesList(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonDel(context),
              SizedBox(width: 16),
              buttonAdd(context),
            ],
          ),
          SizedBox(height: 24),
          Divider(
            thickness: 2,
            indent: 144,
            endIndent: 144,
            color: Theme.of(context).dividerColor,
          ),
        ],
      ),
    );
  }
}
