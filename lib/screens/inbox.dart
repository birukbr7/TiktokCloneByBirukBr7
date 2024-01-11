import 'package:faker/faker.dart';

import 'package:flutter/material.dart';
import 'package:tiktokclone/widgets/inbox_widget/activity_status.dart';
import 'package:tiktokclone/widgets/inbox_widget/chat_messages.dart';
import 'package:tiktokclone/widgets/user_diplay.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  final randomName = Faker().person.firstName();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.add_circle_outline_sharp,
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Inbox',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.green,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 27,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              radius: 35,
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
                                      color:
                                          const Color.fromRGBO(26, 205, 235, 1),
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
                        const SizedBox(
                          height: 5.5,
                        ),
                        const Text(
                          'Create',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    ...List.generate(
                      15,
                      (index) => const UserInfoDiplay(),
                    ),
                  ],
                ),
              ),
              ActivityStatus(
                label: 'New Followers',
                color: Colors.blue,
                icon: Icons.people,
                description: '$randomName  started following you',
              ),
              const ActivityStatus(
                label: 'Activity',
                description: 'Notification will how up here',
                color: Colors.pink,
                icon: Icons.notifications,
              ),
              const ActivityStatus(
                label: 'Message request',
                description: 'You have 176 request',
                color: Color.fromRGBO(62, 72, 120, 1),
                icon: Icons.message,
              ),
              const ActivityStatus(
                label: 'System notification',
                description: 'Your system notification will be diplayed here',
                color: Color.fromRGBO(10, 16, 53, 1),
                icon: Icons.local_print_shop_rounded,
              ),
              ...List.generate(15, (index) => const ChatMessages()),
            ],
          ),
        ),
      ),
    );
  }
}
