import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vfinally/Components/series_details.dart';
import 'package:vfinally/Home.dart';
import 'package:vfinally/screens/chewie_player.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF000000),
        scaffoldBackgroundColor: Color(0xFF000000),
      ),
      home: new SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/video': (context) => ChewieDemo(),
        '/detail':(context) => SeriesDetails()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('asset/uber.gif'),
      ),
    );
  }
}
