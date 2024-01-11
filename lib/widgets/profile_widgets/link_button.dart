import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.rotate(
          angle: 45 * 10 / 180,
          child: const Icon(Icons.link),
        ),
        const Text('  https://t.me/br7tutorial',
            style: TextStyle(
              color: Color.fromRGBO(22, 24, 35, 1),
              fontWeight: FontWeight.w500,
            ))
      ],
    );
  }
}
