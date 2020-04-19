import 'package:flutter/material.dart';
import 'package:vfinally/screens/PhotoHero.dart';

class HeroAnimation extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Center(
        child: PhotoHero(
          photo: 'asset/bad.jpg',
          width: 300.0,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Flippers Page'),
                    ),
                    body: Container(
                      // The blue background emphasizes that it's a new route.
                      color: Colors.black,
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.topLeft,
                      child: PhotoHero(
                        photo: 'asset/bad.jpg',
                        width: 100.0,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  );
                }
            ));
          },
        ),
      ),
    );
  }
}