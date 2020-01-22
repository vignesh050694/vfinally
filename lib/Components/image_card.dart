import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  ImageCard({@required this.image, this.onPress});

  final String image;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Image(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
