import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';

class SmallNewsCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final int;
  const SmallNewsCard({super.key, required this.int});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: AppLayout.getHeight(140),
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
            child: Image(
              image: AssetImage('assets/images/small$int.jpg'),
              fit: BoxFit.cover, // You can adjust the fit as needed
            ),
          ),
        ),
        Gap(AppLayout.getHeight(4)),
        const Text(
          'News Title goes here',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              'Ghana',
              style: Styles.headLineStyle4.copyWith(color: Colors.blue),
            ),
            Gap(AppLayout.getHeight(10)),
            const Text(
              '4mins ago',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
