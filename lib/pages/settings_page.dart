import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/screens/complains_screen.dart';
import 'package:shortchanged/screens/notification_screen.dart';
import 'package:shortchanged/screens/profile_screen.dart';
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
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: Styles.headLineStyle1.copyWith(color: Colors.black),
              ),
              Gap(AppLayout.getHeight(AppLayout.getHeight(20))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: AppLayout.getHeight(30),
                        child: const Icon(
                          Icons.person,
                        ),
                      ),
                      Gap(AppLayout.getHeight(AppLayout.getHeight(12))),
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
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileScreen(),
                            ));
                      },
                      child: SvgPicture.asset('assets/icons/edit-2.svg'))
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
                    assetName: 'assets/icons/magic-star.svg',
                    title: 'Accessibility',
                    subtitle: 'Customise App to your needs'),
              ),
              Gap(AppLayout.getHeight(30)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ComplainsScreen()));
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
