import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakelock/wakelock.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

void main() {
  runApp(
    ChewieDemo(),
  );
}

class ChewieDemo extends StatefulWidget {
  ChewieDemo({this.title = 'Finally'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;
  Timer _timer;
  int counter1 = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    Wakelock.enable();

    //  initialize();
  }

  Future initialize() async {
    _timer = Timer.periodic(
      const Duration(milliseconds: 500),
      (Timer timer) async {
        await _videoPlayerController1.position;
        if (_videoPlayerController1.value.isPlaying) {
          print(_videoPlayerController1.value.position);
        }
      },
    );
    print(_videoPlayerController1.value.duration.inMilliseconds);
    print(_videoPlayerController1.value.isBuffering);
    print(_videoPlayerController1.value.size.height);
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    Wakelock.disable();
    super.dispose();
  }

  double _calculateAspectRatio(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width/6;
    final height = size.height/6;

    return width > height ? width / height : height / width;
  }

  @override
  Widget build(BuildContext context) {
    _platform = TargetPlatform.android;

    _videoPlayerController1 = VideoPlayerController.network(
        'https://vfinally.s3.ap-south-1.amazonaws.com/output/Singlesh/single.m3u8');
    _videoPlayerController2 = VideoPlayerController.network(
        'https://www.sample-videos.com/video123/mp4/480/big_buck_bunny_480p_20mb.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: _calculateAspectRatio(context),
      autoPlay: true,
      looping: false,
      showControls: false,
      routePageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondAnimation, provider) {
        return AnimatedBuilder(
          animation: animation,
          builder: (BuildContext context, Widget child) {
            return VideoScaffold(
              child: Scaffold(
                resizeToAvoidBottomPadding: false,
                body: Container(
                  alignment: Alignment.center,
                  color: Colors.black,
                  child: provider,
                ),
              ),
            );
          },
        );
      },
    );

    return MaterialApp(
      title: widget.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        platform: _platform ?? Theme.of(context).platform,
      ),
      home: Scaffold(
        backgroundColor: Color(0xff000000),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Chewie(
                  controller: _chewieController,
                ),
              ),
            ),
            Center(),
          ],
        ),
      ),
    );
  }
}

class VideoScaffold extends StatefulWidget {
  const VideoScaffold({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  State<StatefulWidget> createState() => _VideoScaffoldState();
}

class _VideoScaffoldState extends State<VideoScaffold> {
  @override
  void initState() {
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
