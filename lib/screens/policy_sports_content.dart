import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/widgets/large_news_card.dart';

class PolicySportsContent extends StatefulWidget {
  const PolicySportsContent({super.key});

  @override
  State<PolicySportsContent> createState() => _PolicySportsContent();
}

class _PolicySportsContent extends State<PolicySportsContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          LargeNewsCard(),
          Gap(20),
          LargeNewsCard(),
          Gap(20),
          LargeNewsCard(),
          Gap(20),
          LargeNewsCard(),
          Gap(20),
        ],
      ),
    );
  }
}
