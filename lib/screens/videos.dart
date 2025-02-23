import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktokclone/widgets/video_overlay_widgets.dart';
import 'package:video_player/video_player.dart';
import 'package:faker/faker.dart' as faker;

class Videos extends StatefulWidget {
  final bool isFollwoing;

  const Videos({super.key, this.isFollwoing = false});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List<String> videos = [
    "videos/1.mp4",
    "videos/2.mp4",
    "videos/3.mp4",
    "videos/4.mp4",
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        return VideoPlayerScreen(videoUrl: videos[index]);
      },
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  bool? isFollwoing;

  VideoPlayerScreen(
      {required this.videoUrl, super.key, this.isFollwoing = false});

  @override
  VideoPlayerScreenState createState() => VideoPlayerScreenState();
}

class VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  bool _isPlaying = true;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
      _isPlaying ? _controller.play() : _controller.pause();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: _togglePlayPause,
        child: Stack(children: [
          Center(
            child: _controller.value.isInitialized
                ? Stack(children: [
                    AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                    Positioned(
                        left: 10,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.isFollwoing! ? 'Biruk ' : 'Br7 Tutorial',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              widget.isFollwoing!
                                  ? 'If you want the code you will find \nit in my git repo birukbr7 ...'
                                  : 'Follow me on tiktok @br7tutorial',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        )),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Column(
                        children: [
                          ProfilePicWithFollowButton(
                            isFollwoing: widget.isFollwoing!,
                          ),
                          const IconWithNumber(
                            icon: Icons.favorite,
                          ),
                          const IconWithNumber(
                            icon: FontAwesomeIcons.solidCommentDots,
                          ),
                          const IconWithNumber(
                            icon: Icons.bookmark,
                          ),
                          const IconWithNumber(
                            icon: FontAwesomeIcons.share,
                          ),
                          MusicAvator(isFollwoing: widget.isFollwoing!),
                        ],
                      ),
                    ),
                  ])
                : const CircularProgressIndicator(),
          ),
          Center(
            child: AnimatedOpacity(
              opacity: _isPlaying ? 0.0 : 1.0,
              duration: const Duration(milliseconds: 200),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black38,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  _isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
