import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/widgets/double_text.dart';
import 'package:shortchanged/widgets/medium_news_card.dart';

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
        children: const [
          DoubleText(bigText: 'Latest News', smallText: 'view all'),
          Gap(20),
          SingleChildScrollView(
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
        ],
      ),
    );
  }
}
