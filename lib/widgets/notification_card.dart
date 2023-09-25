import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 40,
          width: 40,
          decoration:
              BoxDecoration(color: Colors.blue.shade50, shape: BoxShape.circle),
          child: SvgPicture.asset(
            'assets/icons/Notification.svg',
            // ignore: deprecated_member_use
            color: Colors.blue.shade500,
          ),
        ),
        const Gap(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('New device has been authorized',
                  style: Styles.headLineStyle3
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
              const Text(
                "Are you new to xwallet? Totally new to cryptocurrencies and ever wondered how to do the basic things?",
                style: TextStyle(
                    fontSize: 12, color: Colors.grey), // Adjust font size
              ),
            ],
          ),
        )
      ],
    );
  }
}
