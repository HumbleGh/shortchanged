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
import 'package:shortchanged/widgets/poll_card.dart';
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
            width: double.infinity,
            padding: const EdgeInsets.only(left: 15),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallNewsCard(int: 1),
                  Gap(20),
                  SmallNewsCard(int: 2),
                ],
              ),
            ),
          ),
          const Gap(20),
          const DoubleText(
            bigText: 'Recently Added Polls',
            smallText: 'view all',
            page: PollsPage(),
          ),
          const Gap(10),
          const PollCard()
        ],
      ),
    );
  }
}
