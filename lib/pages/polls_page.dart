import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/pages/notification_page.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/widgets/poll_card.dart';

class PollsPage extends StatefulWidget {
  const PollsPage({super.key});

  @override
  State<PollsPage> createState() => _PollsPageState();
}

class _PollsPageState extends State<PollsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            padding: EdgeInsets.only(left: AppLayout.getHeight(5)),
            child: Text(
              'Polls',
              style: Styles.headLineStyle1,
            ),
          ),
          centerTitle: false,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const NotificationPage()),
                  ),
                );
              },
              child: Container(
                height: AppLayout.getHeight(24),
                width: AppLayout.getHeight(24),
                margin: EdgeInsets.only(right: AppLayout.getHeight(20)),
                child: SvgPicture.asset(
                  'assets/icons/Notification.svg',
                  height: 18,
                ),
              ),
            )
          ]),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
            ),
          ),
          const PollCard(),
          const Gap(20),
          const PollCard(),
          const Gap(20),
          const PollCard()
        ],
      ),
    );
  }
}
