import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';

class MediumNewsCard extends StatelessWidget {
  const MediumNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/phone.png'),
          const Gap(8),
          Text(
            'News Content Goes Here',
            style: Styles.headLineStyle3,
          ),
          Row(
            children: [
              Text(
                'Ghana',
                style: Styles.headLineStyle4.copyWith(color: Colors.blue),
              ),
              const Gap(10),
              const Text(
                '18th March, 2023',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
