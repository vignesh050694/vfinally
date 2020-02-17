import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vfinally/Components/series_details.dart';
import 'package:vfinally/Home.dart';
import 'package:vfinally/screens/finally_player.dart';
import 'package:vfinally/screens/search_screen.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF000000),
        scaffoldBackgroundColor: Color(0xFF000000),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/': (context) => HomePage(),
        '/home': (context) => HomePage(),
        '/video': (context) => FinallyDemo(),
        '/detail':(context) => SeriesDetails(),
        '/settings':(context) => SettingsPage(),
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
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('asset/netflix.jpg'),
      ),
    );
  }
}
