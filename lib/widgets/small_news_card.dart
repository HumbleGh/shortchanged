import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
        Image.asset('assets/images/small$int.png'),
        const Text(
          'New Content Goes here',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              'Ghana',
              style: Styles.headLineStyle4.copyWith(color: Colors.blue),
            ),
            const Gap(10),
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
