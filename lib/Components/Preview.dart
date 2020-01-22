import 'package:flutter/material.dart';

class PreviewImage extends StatelessWidget {
  PreviewImage({@required this.image,this.titleImage, this.onPress});

  final String image;
  final String titleImage;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(image),
              ),
              Positioned(
                top: 60,
                left: 2,
                right: 2,
                child: Image(
                  image: AssetImage(titleImage),
                  height: 40,
                  width: 120,
                ),
              )
            ],
          )),
    );
  }
}
