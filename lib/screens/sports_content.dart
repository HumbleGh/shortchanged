import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/pages/news_page.dart';
import 'package:shortchanged/pages/policy_page.dart';
import 'package:shortchanged/pages/polls_page.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/widgets/double_text.dart';
import 'package:shortchanged/widgets/large_news_card.dart';
import 'package:shortchanged/widgets/medium_news_card.dart';
import 'package:shortchanged/widgets/option_card.dart';
import 'package:shortchanged/widgets/small_news_card.dart';

class SportsContent extends StatefulWidget {
  const SportsContent({super.key});

  @override
  State<SportsContent> createState() => _SportsContentState();
}

class _SportsContentState extends State<SportsContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const DoubleText(
            bigText: 'Latest News',
            smallText: 'view all',
            page: NewsPage(),
          ),
          const Gap(10),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MediumNewsCard(
                  int: 1,
                ),
                MediumNewsCard(
                  int: 2,
                ),
                MediumNewsCard(
                  int: 3,
                ),
                MediumNewsCard(
                  int: 4,
                ),
              ],
            ),
          ),
          const Gap(20),
          const DoubleText(
            bigText: 'Top Policies',
            smallText: 'view all',
            page: PolicyPage(),
          ),
          const Gap(10),
          const LargeNewsCard(),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallNewsCard(int: 1),
                SmallNewsCard(int: 2),
              ],
            ),
          ),
          const Gap(20),
          const DoubleText(
            bigText: 'Recently Added Polls',
            smallText: 'view all',
            page: PollsPage(),
          ),
          const Gap(10),
          Container(
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
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.black),
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
          )
        ],
      ),
    );
  }
}
