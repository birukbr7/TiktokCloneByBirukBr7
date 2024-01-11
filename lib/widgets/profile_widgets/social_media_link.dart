import 'package:flutter/material.dart';

class SocialMediaLinks extends StatelessWidget {
  final IconData iconData;
  final String label;
  const SocialMediaLinks({
    super.key,
    required this.iconData,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.pink,
            size: 20,
          ),
          Text(
            label,
            style: const TextStyle(
              color: Color.fromRGBO(22, 24, 35, 1),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
