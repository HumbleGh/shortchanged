import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shortchanged/pages/notification_page.dart';
import 'package:shortchanged/utils/app_style.dart';

class TitleNotification extends StatelessWidget {
  final String title;
  const TitleNotification({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.headLineStyle1,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationPage()));
          },
          child: SvgPicture.asset(
            'assets/icons/Notification.svg',
            width: 24.0,
            height: 24.0,
          ),
        )
      ],
    );
  }
}
