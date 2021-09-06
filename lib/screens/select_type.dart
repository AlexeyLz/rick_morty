import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ruck_morty/styles/divider.dart';

class SelectType extends StatefulWidget {
  @override
  _SelectTypeState createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
  Color grayButtonText = Color.fromRGBO(0, 0, 0, 0.38);
  Color grayButtonBack = Color.fromRGBO(0, 0, 0, 0.08);

  OutlinedButton selectButton(text, colorText, colorBack) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2.apply(color: colorText),
      ),
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: colorBack,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
    );
  }

  List types() {
    var types = ['Black', 'Bold', 'Medium', 'Regular', 'Light'];
    return types;
  }

  Widget isActive(index, context) {
    if (index == 2) {
      return selectButton("Medium", Theme.of(context).buttonColor,
          Theme.of(context).textSelectionColor);
    } else {
      return selectButton(types()[index], grayButtonText, grayButtonBack);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      color: Theme.of(context).primaryColor,
      height: 96,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Select Type",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              SizedBox(
                width: 700,
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: types().length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          isActive(index, context),
                          SizedBox(width: 8),
                        ],
                      );
                    }),
              ),
            ]),
          ),
          SizedBox(
            height: 24,
          ),
          Div(),
        ],
      ),
    );
  }
}
