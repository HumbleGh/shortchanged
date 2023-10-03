import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/widgets/notification_card.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: Styles.headLineStyle2,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/edit-2.svg',
              width: AppLayout.getHeight(24),
              height: AppLayout.getHeight(24),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(20)),
              child: Column(
                children: [
                  const NotificationCard(),
                  Gap(AppLayout.getHeight(20)),
                  const NotificationCard(),
                  Gap(AppLayout.getHeight(20)),
                  const NotificationCard(),
                  Gap(AppLayout.getHeight(20)),
                  const NotificationCard(),
                  Gap(AppLayout.getHeight(20)),
                  const NotificationCard(),
                  Gap(AppLayout.getHeight(20)),
                  const NotificationCard(),
                  Gap(AppLayout.getHeight(20)),
                  const NotificationCard(),
                  Gap(AppLayout.getHeight(20)),
                  const NotificationCard(),
                  Gap(AppLayout.getHeight(20)),
                  const NotificationCard(),
                  Gap(AppLayout.getHeight(20)),
                  const NotificationCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
