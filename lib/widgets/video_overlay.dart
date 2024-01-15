import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktokclone/widgets/video_overlay_widgets.dart';

class VideoOverlay extends StatelessWidget {
  final bool isFollwoing;
  const VideoOverlay({
    this.isFollwoing = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                Icons.play_arrow_sharp,
                color: Colors.white60,
                size: 80,
              ),
            ),
          ],
        ),
        Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isFollwoing ? 'Biruk ' : 'Br7 Tutorial',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  isFollwoing
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
                isFollwoing: isFollwoing,
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
              MusicAvator(isFollwoing: isFollwoing),
            ],
          ),
        ),
      ],
    );
  }
}
