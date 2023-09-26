import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool first = false;
  bool second = true;
  bool third = false;
  bool fourth = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thematic Areas',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Show notifications for subscribeed thematic areas',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Switch(
                // This bool value toggles the switch.
                value: first,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    first = value;
                  });
                },
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Policy Subscriptions',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Show notifications for policy \nsubscriptions',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Switch(
                // This bool value toggles the switch.
                value: second,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    second = value;
                  });
                },
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Comments Replies',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Show notifications on comments',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Switch(
                // This bool value toggles the switch.
                value: third,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    third = value;
                  });
                },
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TUser reactions to comment',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Show notifications for user reactions to comments',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Switch(
                // This bool value toggles the switch.
                value: fourth,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    fourth = value;
                  });
                },
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
        ]),
      ),
    );
  }
}
