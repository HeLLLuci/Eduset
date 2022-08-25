import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Flutter_video extends StatefulWidget {
  const Flutter_video({Key? key}) : super(key: key);

  @override
  State<Flutter_video> createState() => _Flutter_videoState();
}

class _Flutter_videoState extends State<Flutter_video> {
  late YoutubePlayerController  _controller;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  final List<String> _ids =[
    'HtgsoZieoeM',
    'Si5XJ_IocEs',
    'VdkRy3yZiPo',
    'DnC7eT-vh1k',
  ];

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        initialVideoId: _ids.first,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        captionLanguage: "en-us",
        forceHD: true,
        hideControls: false,
        controlsVisibleAtStart: true,
        hideThumbnail: false,
        disableDragSeek: false,
        mute: false,
        showLiveFullscreenButton: true,
        loop: true,
      ),
    );
    _videoMetaData = const YoutubeMetaData(
      
    );

  }

  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}
