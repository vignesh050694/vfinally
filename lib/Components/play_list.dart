import 'package:flutter/material.dart';
import 'package:vfinally/Components/image_card.dart';

class PlayList extends StatelessWidget {
  PlayList({@required this.images, this.onPress});

  final Function onPress;
  final List<String> images;

  Widget getImages(image) {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Image(
        image: AssetImage(image),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
          margin: EdgeInsets.only(top: 3.0),
          height: 75,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(images.length,(index){
              return getImages(images[index].toString());
            }),
          ),
        ));
  }
}
