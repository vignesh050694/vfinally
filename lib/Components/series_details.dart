import 'package:flutter/material.dart';
import 'package:vfinally/Components/DetailsContainer.dart';

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
                  margin: EdgeInsets.only(top: 0.0, left: 0),
                  child: Column(
                    children: <Widget>[
                      DetailsContainer(
                        image: "asset/banner.jpg",
                        title: '1. Yar Kolaigaran',
                      ),
                      DetailsContainer(
                        image: "asset/doc.jpg",
                        title: '2. Doctor MBBS',
                      ),
                      DetailsContainer(
                        image: "asset/friend.jpg",
                        title: '3. Friends',
                      ),
                      DetailsContainer(
                        image: "asset/room.jpg",
                        title: '4. Roomate',
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
