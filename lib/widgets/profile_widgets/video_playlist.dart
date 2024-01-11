import 'package:flutter/material.dart';
import 'package:tiktokclone/widgets/profile_widgets/button.dart';

class VideoPlaylist extends StatelessWidget {
  const VideoPlaylist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Button(
              widget: Icon(Icons.add),
            ),
            SizedBox(
              width: 5,
            ),
            Button(
              widget: PlaylistName(
                label: '  PC tips',
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Button(
              widget: PlaylistName(
                label: '  best websites',
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Button(
              widget: PlaylistName(
                label: '  Student app & websites',
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Button(
              widget: PlaylistName(
                label: '  Best app & games',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaylistName extends StatelessWidget {
  final String label;
  const PlaylistName({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.video_collection_outlined),
        Text(
          label,
          style: const TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
