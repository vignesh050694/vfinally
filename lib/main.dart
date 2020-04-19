import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vfinally/Components/series_details.dart';
import 'package:vfinally/Home.dart';
import 'package:vfinally/screens/finally_player.dart';
import 'package:vfinally/screens/hero-animation.dart';
import 'package:vfinally/screens/more-menu.dart';
import 'package:vfinally/screens/search_screen.dart';
import 'package:vfinally/screens/team.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF000000),
        scaffoldBackgroundColor: Color(0xFF000000),
      ),
      home: SplashScreen(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => HomePage(),
        '/video': (context) => FinallyDemo(),
        '/detail':(context) => SeriesDetails(),
        '/settings':(context) => SettingsPage(),
        '/more':(context) => SettingsMenu(),
        '/team':(context) => Team(),
        '/hero':(context) => HeroAnimation(),
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
    return Scaffold(
      body: Center(
        child:  Container(
          width: 100.0,
          height: 100.0,
          decoration:  BoxDecoration(
            color: const Color(0xff7c94b6),
            image:  DecorationImage(
              image: AssetImage('asset/logo.png'),
              fit: BoxFit.cover,
            ),
            borderRadius:  BorderRadius.all( Radius.circular(50.0)),
            border:  Border.all(
              color:  Colors.white,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
