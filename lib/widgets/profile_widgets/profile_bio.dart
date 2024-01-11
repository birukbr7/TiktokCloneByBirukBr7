import 'package:flutter/material.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Your tech guy!\nYoutube&telegram@br7tutorial\nfor question Dm in insta br7tutorial',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromRGBO(22, 24, 35, 1),
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
