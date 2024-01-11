import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktokclone/widgets/profile_widgets/button.dart';
import 'package:tiktokclone/widgets/profile_widgets/followers_count.dart';
import 'package:tiktokclone/widgets/profile_widgets/link_button.dart';
import 'package:tiktokclone/widgets/profile_widgets/profile_bio.dart';
import 'package:tiktokclone/widgets/profile_widgets/social_media_link.dart';
import 'package:tiktokclone/widgets/profile_widgets/user_videos.dart';
import 'package:tiktokclone/widgets/profile_widgets/video_playlist.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.format_line_spacing_sharp,
      Icons.lock_outline_rounded,
      FontAwesomeIcons.retweet,
      Icons.bookmark_border,
      Icons.favorite_border,
    ];
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 45.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Br7tutorial',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(8, 1.5, 8, 1.5),
                  child: Text(
                    '9+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: const [
          Icon(Icons.date_range),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.menu)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage('images/br7logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(26, 205, 235, 1),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                )),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '@br7tutorial',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FollowersCount(
                        header: '182',
                        subHeader: 'Following',
                      ),
                      FollowersCount(
                        header: '177.2K',
                        subHeader: 'Followers',
                      ),
                      FollowersCount(
                        header: '887.5K',
                        subHeader: 'Likes',
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Button(
                        widget: TextInTheButton(
                          label: 'Edit profile',
                        ),
                      ),
                      Button(
                        widget: TextInTheButton(
                          label: 'Share profile',
                        ),
                      ),
                      Button(
                        widget: Icon(
                          Icons.person_add_alt,
                        ),
                      ),
                    ],
                  ),
                ),
                const ProfileBio(),
                const LinkButton(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaLinks(
                      iconData: FontAwesomeIcons.instagram,
                      label: ' Instagram',
                    ),
                    SocialMediaLinks(
                      iconData: Icons.camera_alt_outlined,
                      label: ' Add Yours',
                    ),
                  ],
                ),
                DefaultTabController(
                  length: 5,
                  child: TabBar(
                    unselectedLabelColor:
                        const Color.fromRGBO(134, 134, 134, 1),
                    indicatorColor: Colors.black,
                    isScrollable: true,
                    labelPadding: EdgeInsets.zero,
                    dividerColor: Colors.transparent,
                    tabs: [
                      for (var icon in icons)
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 5,
                          child: Tab(
                            icon: Icon(
                              icon,
                              color: const Color.fromRGBO(134, 134, 134, 1),
                              size: 22,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const VideoPlaylist(),
                const UserVideos(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
