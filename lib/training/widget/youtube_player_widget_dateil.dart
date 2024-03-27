import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayeR extends StatefulWidget {
  const YoutubePlayeR({
    super.key,
    required this.url,
  });
  final String url;

  @override
  State<YoutubePlayeR> createState() => _YoutubePlayeRState();
}

class _YoutubePlayeRState extends State<YoutubePlayeR> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(widget.url);
    controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        showLiveFullscreenButton: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: YoutubePlayer(
            controller: controller,
            showVideoProgressIndicator: true,
          ),
        ),
      ],
    );
  }
}
