import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/widgets/option_card.dart';

class PollCard extends StatelessWidget {
  const PollCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 240,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.grey.shade50,
          border: Border.all(color: Colors.grey.shade400, width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Should FREE SHS be tied to E-Levy',
                style: Styles.headLineStyle4.copyWith(color: Colors.black),
              ),
              const Icon(
                Icons.more_horiz,
                color: Colors.grey,
              )
            ],
          ),
          const Gap(12),
          const OptionCard(option: 'Yeah'),
          const Gap(8),
          const OptionCard(option: 'Not Really'),
          const Gap(8),
          const OptionCard(option: 'I don\'t care'),
          const Gap(10),
          const Text(
            '500 votes, 10 closes in 10 days',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
