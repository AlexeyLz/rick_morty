import 'package:flutter/material.dart';

class Div extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      indent: 18,
      endIndent: 17,
      color: Theme.of(context).dividerColor,
    );
  }
}
