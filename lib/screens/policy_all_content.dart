import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';
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
      body: ListView(children: [
        Gap(AppLayout.getHeight(20)),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 1000,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                          height: 5,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(20)),
                          child: const Column(
                            children: [Text("Hey Man")],
                          ),
                        ),
                      ))
                    ],
                  ),
                );
              },
            );
          },
          child: const PolicyTile(
            news: 'The Programme of Cooperation between...',
            title: 'Cooperation Mali-UNICEF',
          ),
        ),
        Gap(AppLayout.getHeight(20)),
        const PolicyTile(
          news: 'The Programme of Cooperation between...',
          title: 'Cooperation Mali-UNICEF',
        ),
        Gap(AppLayout.getHeight(20)),
      ]),
    );
  }
}
