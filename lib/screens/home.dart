import 'package:flutter/material.dart';
import 'package:tiktokclone/screens/videos.dart';
import 'package:tiktokclone/widgets/video_overlay.dart';

class Home extends StatefulWidget {
  bool? fromProfile;
  Home({super.key, this.fromProfile});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.fromProfile == true
          ? AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              title: SizedBox(
                height: 40,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Find relevant content',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                      alignLabelWithHint: true,
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Search",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          : AppBar(
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
      body: const Videos(),
    );
  }
}
