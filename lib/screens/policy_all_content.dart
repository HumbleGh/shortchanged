import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/widgets/policy_tile.dart';

class PolicyAllContent extends StatefulWidget {
  const PolicyAllContent({super.key});

  @override
  State<PolicyAllContent> createState() => _PolicyAllContent();
}

class _PolicyAllContent extends State<PolicyAllContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        Gap(20),
        PolicyTile(
          news: 'The Programme of Cooperation between...',
          title: 'Cooperation Mali-UNICEF',
        ),
        Gap(20),
        PolicyTile(
          news: 'The Programme of Cooperation between...',
          title: 'Cooperation Mali-UNICEF',
        ),
      ]),
    );
  }
}
