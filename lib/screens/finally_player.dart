import 'package:chewie/chewie.dart';
import 'package:flutter/services.dart';
import 'package:vfinally/screens/FinallyControls.dart';
import 'package:wakelock/wakelock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(
    FinallyDemo(),
  );
}

class FinallyDemo extends StatefulWidget {
  FinallyDemo({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _FinallyDemoState();
  }
}

class _FinallyDemoState extends State<FinallyDemo> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  ChewieController _chewieController;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    Wakelock.enable();

    super.initState();
    /*_videoPlayerController1 = VideoPlayerController.network(
        'https://vfinally.s3.ap-south-1.amazonaws.com/output/Singlesh/single.m3u8'); */

    _videoPlayerController1 = VideoPlayerController.network(
        ' https://vfinally.s3.amazonaws.com/output/Singlesh/single.m3u8');

  }

  double _calculateAspectRatio(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width-20;
    final height = size.height-100;

    return width > height ? width / height : height / width;
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _videoPlayerController1.dispose();
    _chewieController.dispose();
    Wakelock.disable();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 16/9,
      autoPlay: true,
      looping: true,
      customControls: FinallyControls(backgroundColor: Colors.black,iconColor: Colors.white)
    );
    _chewieController.enterFullScreen();
    return MaterialApp(
      title: widget.title,
      theme: ThemeData.dark().copyWith(
        platform: _platform ?? Theme.of(context).platform,
      ),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Chewie(
                  controller: _chewieController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
