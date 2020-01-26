import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  DetailsContainer({@required this.image,this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Stack(children: <Widget>[
              SizedBox(
                height: 80,
                child: Image(
                  image: AssetImage(image),
                ),
              ),
            ]),
          ),
          Expanded(
            flex: 10,
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[300],
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
