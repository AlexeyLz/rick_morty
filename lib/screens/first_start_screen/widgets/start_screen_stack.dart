import 'package:flutter/material.dart';
import 'package:flutter_rick_morty/resources/images.dart';

class StartScreenStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, alignment: Alignment.topCenter,
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 20,
          child: Image(
            width: 156,
            height: 144,
            image: AssetImage(Images.rick),
          ),
        ),
        Positioned(
          top: 160,
          child: Image(
            width: 45 / 1.2,
            height: 47 / 1.2,
            image: AssetImage(Images.and),
          ),
        ),
        Positioned(
          top: 160,
          child: Image(
            width: 270 / 1.5,
            height: 192 / 1.5,
            image: AssetImage(Images.morty),
          ),
        ),
        Positioned(
          top: 270,
          child: Image(
            width: 310,
            height: 205,
            image: AssetImage(Images.upMain),
          ),
        ),
        Positioned(
          top: 450,
          left: 80,
          child: Image(
            width: 315,
            height: 217,
            image: AssetImage(Images.downMain),
          ),
        ),
      ],
    );
  }
}
