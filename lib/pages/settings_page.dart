import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/screens/notification_screen.dart';
import 'package:shortchanged/screens/support_screen.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/widgets/icon_text_icon.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: Styles.headLineStyle1.copyWith(color: Colors.black),
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.person,
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Humble Osei',
                            style: Styles.headLineStyle2,
                          ),
                          const Text('humbleosei@gmail.com')
                        ],
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/edit-2.svg')
                ],
              ),
              Gap(AppLayout.getHeight(30)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()));
                },
                child: const IconTextIcon(
                    assetName: 'assets/icons/NotificationBold.svg',
                    title: 'Device Notification',
                    subtitle: 'Device Notification, Emails & Updates'),
              ),
              Gap(AppLayout.getHeight(30)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SupportScreen()));
                },
                child: const IconTextIcon(
                    assetName: 'assets/icons/ChatBold.svg',
                    title: 'Support',
                    subtitle: 'Talk to our technical team'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
