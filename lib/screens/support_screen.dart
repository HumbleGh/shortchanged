import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreen();
}

class _SupportScreen extends State<SupportScreen> {
  bool first = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessibility'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Show text to speech',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Gap(AppLayout.getHeight(4)),
                    const Text(
                      'Allow user to playback text to speech on comments and posts',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Switch.adaptive(
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
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Languages',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'English',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              )
            ],
          )
        ]),
      ),
    );
  }
}
