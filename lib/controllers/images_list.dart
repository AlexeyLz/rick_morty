import "package:flutter/material.dart";

class ImagesList extends StatelessWidget {
  Widget element(context, path) {
    final AssetImage imageGirl = AssetImage('assets/images/' + path + '.png');
    return Container(
      height: 97,
      width: 97,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        image: DecorationImage(
          image: imageGirl,
          fit: BoxFit.fill,
        ),
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: EdgeInsets.only(top: 8, right: 8),
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.white),
              color: Colors.red[200],
              shape: BoxShape.circle),
          alignment: Alignment.center,
          child: Icon(
            Icons.close,
            color: Theme.of(context).primaryColor,
            size: 15,
          ),
        ),
      ),
    );
  }

  final List<String> imagePath = [
    'image_1',
    'image_2',
    'image_3',
    'image_4',
    'image_5',
    'image_6',
    'image_7',
    'image_8',
    'image_9',
  ];
  final List<Alignment> imageLocation = [
    Alignment.topLeft,
    Alignment.centerLeft,
    Alignment.bottomLeft,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: (imagePath.length / 3).round(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      child: element(context, imagePath[index]),
                      alignment: imageLocation[0],
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      child: element(context, imagePath[(index + 3)]),
                      alignment: imageLocation[1],
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      child: element(context, imagePath[(index + 6)]),
                      alignment: imageLocation[2],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
