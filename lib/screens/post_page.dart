import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Icon(
        Icons.camera_alt_outlined,
        color: Colors.white,
        size: 100,
      )),
    );
  }
}
