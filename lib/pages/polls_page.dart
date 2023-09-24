import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/widgets/poll_card.dart';
import 'package:shortchanged/widgets/title_notification.dart';

class PollsPage extends StatefulWidget {
  const PollsPage({super.key});

  @override
  State<PollsPage> createState() => _PollsPageState();
}

class _PollsPageState extends State<PollsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const TitleNotification(title: 'Polls'),
          ),
          const PollCard(),
          const Gap(20),
          const PollCard(),
          const Gap(20),
          const PollCard()
        ],
      ),
    );
  }
}
