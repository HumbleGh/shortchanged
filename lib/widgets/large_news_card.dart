import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';

class LargeNewsCard extends StatelessWidget {
  const LargeNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: AppLayout.getHeight(150),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
            child: const Image(
              image: AssetImage('assets/images/medium4.jpg'),
              fit: BoxFit.cover, // You can adjust the fit as needed
            ),
          ),
        ),
        const Gap(8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
          child: Text(
            'Programme: The Project to Improve the Quality and Outcomes of Education for All in Mali',
            style: Styles.headLineStyle3,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
          child: Row(
            children: [
              Text(
                'Ghana',
                style: Styles.headLineStyle4.copyWith(color: Colors.blue),
              ),
              Gap(AppLayout.getHeight(10)),
              const Text(
                '18th March, 2023',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
