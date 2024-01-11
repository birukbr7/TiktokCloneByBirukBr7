import 'package:flutter/material.dart';
import 'package:tiktokclone/screens/friends.dart';
import 'package:tiktokclone/screens/home.dart';
import 'package:tiktokclone/screens/inbox.dart';
import 'package:tiktokclone/screens/post_page.dart';
import 'package:tiktokclone/screens/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final tabs = const [
    Home(),
    FriendsPage(),
    PostPage(),
    InboxPage(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    bool isDark =
        (_currentIndex == 0 || _currentIndex == 2 || _currentIndex == 3)
            ? true
            : false;
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            setState(() => _currentIndex = value);
          },
          items: [
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            const BottomNavigationBarItem(
              label: 'Friends',
              icon: Icon(
                Icons.people,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                'images/plus.png',
                width: 35,
                height: 35,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'Inbox ',
              icon: Icon(
                Icons.indeterminate_check_box_outlined,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.person_2_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
