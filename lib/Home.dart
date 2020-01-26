import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:vfinally/Components/Preview.dart';
import 'package:vfinally/Components/play_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = List<String>();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    images.add("asset/bad.jpg");
    images.add("asset/banner.jpg");
    images.add("asset/doc.jpg");
    images.add("asset/friend.jpg");
    images.add("asset/travel.jpg");
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VFinally'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, //
        currentIndex: _currentIndex, //
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        showUnselectedLabels: true,
        backgroundColor: Color(0xFF000000),
        iconSize: 18.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), title: Text('More')),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                    height: 150.0,
                    child: Carousel(
                      images: [
                        ExactAssetImage("asset/bad.jpg"),
                        ExactAssetImage("asset/banner.jpg"),
                        ExactAssetImage("asset/doc.jpg"),
                        ExactAssetImage("asset/friend.jpg"),
                        ExactAssetImage("asset/room.jpg")
                      ],
                      dotSize: 4.0,
                      dotSpacing: 13.0,
                      dotColor: Colors.grey,
                      indicatorBgPadding: 0.0,
                      dotBgColor: Colors.grey.withOpacity(0.0),
                      borderRadius: true,
                      autoplayDuration: Duration(seconds: 5),
                      animationCurve: Curves.fastOutSlowIn,
                      onImageTap: (i) {
                        Navigator.pushNamed(context, '/video');
                      },
                    )),
                Container(
                  margin: EdgeInsets.only(top: 13.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Preview\'s',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 3.0),
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      PreviewImage(
                        image: "asset/friend.jpg",
                        titleImage: "asset/delivery.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                      PreviewImage(
                        image: "asset/bad.jpg",
                        titleImage: "asset/parents.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                      PreviewImage(
                        image: "asset/doc.jpg",
                        titleImage: "asset/roomate.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                      PreviewImage(
                        image: "asset/banner.jpg",
                        titleImage: "asset/delivery.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                      PreviewImage(
                        image: "asset/travel.jpg",
                        titleImage: "asset/delivery.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                      PreviewImage(
                        image: "asset/banner.jpg",
                        titleImage: "asset/delivery.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                      PreviewImage(
                        image: "asset/travel.jpg",
                        titleImage: "asset/delivery.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                      PreviewImage(
                        image: "asset/banner.jpg",
                        titleImage: "asset/delivery.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                      PreviewImage(
                        image: "asset/travel.jpg",
                        titleImage: "asset/delivery.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                      PreviewImage(
                        image: "asset/banner.jpg",
                        titleImage: "asset/delivery.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                      PreviewImage(
                        image: "asset/travel.jpg",
                        titleImage: "asset/delivery.png",
                        onPress: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 13.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Niranjan\'s creation',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                PlayList(
                  images: images,
                ),
                Container(
                  margin: EdgeInsets.only(top: 13.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Continue Watching for Vignesh',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                PlayList(
                  images: images,
                ),
                Container(
                  margin: EdgeInsets.only(top: 13.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Popular on Finally',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                PlayList(
                  images: images,
                ),
                Container(
                  margin: EdgeInsets.only(top: 13.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Trending Now',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                PlayList(
                  images: images,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
