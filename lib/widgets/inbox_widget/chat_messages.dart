import 'dart:math';

import 'package:faker/faker.dart' as faker;
import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final randomName = faker.Faker().person.firstName();
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        child: ClipOval(
          child: Image(
            image: NetworkImage(
              'https://picsum.photos/200?random=${Random().nextInt(1000)}',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        randomName,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14.5,
        ),
      ),
      subtitle: Text(
        'Say Hi to $randomName  .${Random().nextInt(7)}d',
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 14.5,
        ),
      ),
      trailing: const Icon(
        Icons.camera_alt_outlined,
        color: Colors.black54,
      ),
    );
  }
}
