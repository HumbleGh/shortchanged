import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';

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
              width: 24,
              height: 24,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          'assets/icons/Notification.svg',
                          // ignore: deprecated_member_use
                          color: Colors.blue.shade800,
                          //   height: 5,
                          //   width: 5,
                        ),
                      ),
                      const Gap(16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New device has been authorized',
                                style: Styles.headLineStyle3
                                    .copyWith(fontWeight: FontWeight.bold)),
                            const Text(
                              "Are you new to xwallet? Totally new to cryptocurrencies and ever wondered how to do the basic things?",
                              style:
                                  TextStyle(fontSize: 12), // Adjust font size
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
