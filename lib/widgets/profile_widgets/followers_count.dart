import 'package:flutter/material.dart';

class FollowersCount extends StatelessWidget {
  final String header;
  final String subHeader;
  const FollowersCount({
    super.key,
    required this.header,
    required this.subHeader,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          header,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color.fromRGBO(22, 24, 35, 1)),
        ),
        Text(
          subHeader,
          style: const TextStyle(
            fontFamily: 'Typewriter',
            fontSize: 12,
            color: Color.fromRGBO(22, 24, 35, 0.75),
          ),
        ),
      ],
    );
  }
}
