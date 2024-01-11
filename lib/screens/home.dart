import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Following',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'For You',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: const Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Icon(
                  Icons.play_arrow_sharp,
                  color: Colors.white60,
                  size: 80,
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Column(
                children: [
                  Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                  ),
                  Icon(
                    FontAwesomeIcons.share,
                    color: Colors.red,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
