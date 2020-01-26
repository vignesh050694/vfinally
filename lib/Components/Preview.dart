import 'package:flutter/material.dart';

class PreviewImage extends StatelessWidget {
  PreviewImage({@required this.image,this.titleImage, this.onPress,this.colors});

  final String image;
  final String titleImage;
  final Function onPress;
  final int colors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(3, 3, 3, 0),
          child: Stack(
            children: <Widget>[
              Container(
                width: 80.0,
                height: 80.0,
                decoration: new BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: new DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                  border: new Border.all(
                    color:  Colors.redAccent,
                    width: 1.5,
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 2,
                right: 2,
                child: Image(
                  image: AssetImage(titleImage),
                  height: 40,
                  width: 120,
                ),
              )
              /*  CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(image),
                backgroundColor: Colors.white,
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
              ) */
            ],
          )),
    );
  }
}
