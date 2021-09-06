import 'package:flutter/material.dart';
import 'package:flutter_ruck_morty/styles/divider.dart';

class AvatarAndName extends StatelessWidget {
  final AssetImage imageGirl = AssetImage('assets/images/girl.png');
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 118,
            width: 118,
            // child: SizedBox(child: Padding(padding: EdgeInsets.only(bottom: 0, right:0),child: FloatingActionButton(onPressed: () {  },),)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageGirl,
                fit: BoxFit.fill,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 36.0,
                height: 36.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.white),
                    color: Theme.of(context).buttonColor,
                    shape: BoxShape.circle),
                alignment: Alignment.center,
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 24),
          Text(
            "Tiana Rosser",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            "Developer",
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(height: 30),
          Div(),
        ],
      ),
    );
  }
}
