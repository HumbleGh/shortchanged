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
                          margin: const EdgeInsets.only(bottom: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Name",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Gap(AppLayout.getHeight(8)),
                              const Text(
                                'Coopreation Mali-UNICEF',
                                style: TextStyle(fontSize: 16),
                              ),
                              Gap(AppLayout.getHeight(12)),
                              const Text(
                                "Summary",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Gap(AppLayout.getHeight(8)),
                              const Text(
                                'The Programme of Cooperation between the Government of Mali and UNICEF (CPD) for the period 2020-2024, based on the life cycle approach (children aged 0-18 years, i.e. 55% of the population of Mali), has been drawn up with a view to taking into account all the deprivations suffered by children aged 0-18 years.',
                                style: TextStyle(fontSize: 16),
                              ),
                              Gap(AppLayout.getHeight(12)),
                              const Text(
                                "Budget (USD)",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Gap(AppLayout.getHeight(8)),
                              const Text(
                                '120, 521,473',
                                style: TextStyle(fontSize: 16),
                              ),
                              Gap(AppLayout.getHeight(12)),
                              const Text(
                                "Beneficiaries",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Gap(AppLayout.getHeight(8)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: AppLayout.getHeight(10),
                                    width: AppLayout.getHeight(10),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                  Gap(AppLayout.getHeight(10)),
                                  const Text(
                                    "Malian Children",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              Gap(AppLayout.getHeight(12)),
                              const Text(
                                "Objectives",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Gap(AppLayout.getHeight(8)),
                              Row(
                                children: [
                                  Container(
                                    height: AppLayout.getHeight(10),
                                    width: AppLayout.getHeight(10),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                  Gap(AppLayout.getHeight(10)),
                                  const Text(
                                    "To strengthen the child’s survival",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              Gap(AppLayout.getHeight(12)),
                            ],
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
