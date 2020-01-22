import 'package:flutter/material.dart';

class SeriesDetails extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<SeriesDetails> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 250.0,
                  child: Container(
                    margin: EdgeInsets.only(top: 13.0),
                    child: Image(
                      image: AssetImage("asset/bad.jpg"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0, left: 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: Stack(children: <Widget>[
                              SizedBox(
                                height: 80,
                                child: Image(
                                  image: AssetImage("asset/banner.jpg"),
                                ),
                              ),
                            ]),
                          ),
                          Expanded(
                            flex: 10,
                            child: Text(
                              '1. Yar Kolaigaran',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[300],
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "Finally is basically, physically, mentally namma entertainment channel that presents whatever that we find it awesome in daily life.",
                              style: TextStyle(
                                height: 1.3,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: Stack(children: <Widget>[
                              SizedBox(
                                height: 80,
                                child: Image(
                                  image: AssetImage("asset/doc.jpg"),
                                ),
                              ),
                            ]),
                          ),
                          Expanded(
                            flex: 10,
                            child: Text(
                              '2. Doctor MBBS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[300],
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "Finally is basically, physically, mentally namma entertainment channel that presents whatever that we find it awesome in daily life.",
                              style: TextStyle(
                                height: 1.3,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: Stack(children: <Widget>[
                              SizedBox(
                                height: 80,
                                child: Image(
                                  image: AssetImage("asset/friend.jpg"),
                                ),
                              ),
                            ]),
                          ),
                          Expanded(
                            flex: 10,
                            child: Text(
                              '3. Friends',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[300],
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "Finally is basically, physically, mentally namma entertainment channel that presents whatever that we find it awesome in daily life.",
                              style: TextStyle(
                                height: 1.3,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: Stack(children: <Widget>[
                              SizedBox(
                                height: 80,
                                child: Image(
                                  image: AssetImage("asset/room.jpg"),
                                ),
                              ),
                            ]),
                          ),
                          Expanded(
                            flex: 10,
                            child: Text(
                              '4. Roomate',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[300],
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "Finally is basically, physically, mentally namma entertainment channel that presents whatever that we find it awesome in daily life.",
                              style: TextStyle(
                                height: 1.3,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
