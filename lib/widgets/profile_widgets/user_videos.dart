import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tiktokclone/screens/home.dart';
import 'package:tiktokclone/screens/videos.dart';

class UserVideos extends StatelessWidget {
  const UserVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1,
        childAspectRatio: 0.8,
      ),
      itemCount: 15,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Home(
                      fromProfile: true,
                    )),
          ),
          child: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
            (index == 0 || index == 1 || index == 2)
                ? Positioned(
                    left: 3,
                    top: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.9),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                        child: Text(
                          'Pinned',
                          style: TextStyle(
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ))
                : const Positioned(
                    child: Text(''),
                  ),
            Positioned(
              bottom: 0,
              child: Row(
                children: [
                  const Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    '${(Random().nextDouble() * 800 + 100).toStringAsFixed(1)} K',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ]),
        );
      },
    );
  }
}
