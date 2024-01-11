import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 27,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.person_add_alt,
          color: Colors.white,
        ),
        title: const Center(
          child: Text(
            'Friends',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
