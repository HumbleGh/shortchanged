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
        Container(
          height: 140,
          width: 185,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage('assets/images/small$int.jpg'),
              fit: BoxFit.cover, // You can adjust the fit as needed
            ),
          ),
        ),
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
