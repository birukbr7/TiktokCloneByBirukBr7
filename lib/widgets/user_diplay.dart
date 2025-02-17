import 'dart:math';

import 'package:faker/faker.dart' as faker;
import 'package:flutter/material.dart';

class UserInfoDiplay extends StatelessWidget {
  const UserInfoDiplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final randomName = faker.Faker().person.firstName(); // Use the alias
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            child: ClipOval(
              child: Image.network(
                // Use Image.network directly
                'https://picsum.photos/200?random=${Random().nextInt(1000)}',
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            randomName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
