import 'package:flutter/material.dart';
import 'package:vfinally/Components/series_details.dart';
import 'package:vfinally/Home.dart';
import 'package:vfinally/screens/chewie_player.dart';
import 'package:vfinally/screens/finally_player.dart';

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
        '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/video': (context) => FinallyDemo(),
        '/detail':(context) => SeriesDetails()
      },
    );
  }
}
