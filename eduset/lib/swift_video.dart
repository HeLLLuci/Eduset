import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Swift_video extends StatefulWidget {
  const Swift_video({Key? key}) : super(key: key);

  @override
  State<Swift_video> createState() => _Swift_videoState();
}

class _Swift_videoState extends State<Swift_video> {
  late YoutubePlayerController  _controller;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  final List<String> _ids =[
    '6PxwlFLhXog',
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
    return SafeArea(
      child: Scaffold(
        body: YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              thumbnail: Image.asset("assets/images/certificate.png"),
              topActions: <Widget>[
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: Text(
                    _controller.metadata.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
              onReady: (){
                _isPlayerReady = true;
              },
              onEnded: (data){
                _controller
                    .load(_ids[(_ids.indexOf(data.videoId) +1) % _ids.length]);
              },
            ),
            builder: (context, player){
              return Scaffold(
                  appBar: AppBar(),
                  body: Column(
                    children: [
                      player,
                      RichText(
                        text: TextSpan(
                            text: _controller.metadata.title,
                            style: const TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w300
                            ),
                            children: [
                              TextSpan(
                                  text: "\n Duration : ${_controller.metadata.duration}",
                                  style: const TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w300
                                  )
                              )
                            ]
                        ),
                      ),
                    ],
                  )
              );
            }
        ),
      ),
    );
  }
}
