import 'dart:math';

import 'package:flutter/material.dart';

class MusicAvator extends StatefulWidget {
  final bool isFollwoing;
  const MusicAvator({
    this.isFollwoing = false,
    super.key,
  });

  @override
  State<MusicAvator> createState() => _MusicAvatorState();
}

class _MusicAvatorState extends State<MusicAvator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: RotationTransition(
        turns: _controller,
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 18,
            backgroundImage: AssetImage(
                widget.isFollwoing ? 'images/biruk.jpg' : 'images/br7logo.png'),
          ),
        ),
      ),
    );
  }
}

class ProfilePicWithFollowButton extends StatelessWidget {
  final bool isFollwoing;
  const ProfilePicWithFollowButton({
    this.isFollwoing = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Stack(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.white,
            backgroundImage: !isFollwoing
                ? NetworkImage(
                    'https://picsum.photos/200?random=${Random().nextInt(1000)}')
                : const AssetImage('images/br7logo.png') as ImageProvider,
          ),
          isFollwoing
              ? const SizedBox()
              : Positioned(
                  bottom: 10,
                  left: 15,
                  child: Container(
                    transform: Matrix4.translationValues(0, 18, 0),
                    child: const CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 13,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}

class IconWithNumber extends StatelessWidget {
  final IconData icon;
  const IconWithNumber({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
          Text(
            Random().nextInt(9999).toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
