import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';

class MediumNewsCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final int;
  const MediumNewsCard({super.key, required this.int});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            width: 246,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage('assets/images/medium$int.jpg'),
                fit: BoxFit.cover, // You can adjust the fit as needed
              ),
            ),
          ),
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
