import 'package:flutter/material.dart';

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("VFinally"),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color(0XFF000000),
      body: new Center(
        child: RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
                'Gradient Button',
                style: TextStyle(fontSize: 20)
            ),
          ),
        ),
      ),
    );
  }
}