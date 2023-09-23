import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/medium1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'Ghana',
                      style: TextStyle(color: Colors.blue, fontSize: 10),
                    ),
                    const Gap(4),
                    Container(
                      width: 4.0,
                      height: 4.0,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const Gap(4),

                    // The date goes here
                    const Text(
                      '23rd September, 2023',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up,
                          color: Colors.black,
                          size: 18.0,
                        ),
                        Gap(4),
                        Text('800')
                      ],
                    ),
                    Gap(8),
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_down,
                          color: Colors.black,
                          size: 18.0,
                        ),
                        Gap(4),
                        Text('800')
                      ],
                    ),
                    Gap(8),
                    Row(
                      children: [
                        Icon(
                          Icons.comment,
                          color: Colors.black,
                          size: 18.0,
                        ),
                        Gap(4),
                        Text('120')
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            height: 20,
            indent: 20,
            endIndent: 20,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                    "Programme: The Project to Improve"
                    " the Quality and Outcomes of Education for All in Mali",
                    style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                    "The current funding module of the "
                    "Free Senior High School policy is not "
                    "sustainable and needs to be reviewed urgently,"
                    "according to Dr. Steve Manteaw, Co-chair of Ghana"
                    "Extractive Industries Transparency Initiative."
                    "More than GH¢1.8billion of crude oil revenue "
                    "goes into financing the policy every year, "
                    "but Dr. Manteaw says this approach is not sustainable because oil "
                    "is a finite resource and the policy puts an extra burden on government. "
                    "He therefore believes corporate bodies can be encouraged to contribute to the policy. "
                    "Today, we are at a point "
                    "where Free SHS risks collapse "
                    "if we don’t pass the E-levy; the economy "
                    "is in dire straits because over GH¢1.2billionn "
                    "of oil revenue goes into financing Free SHS on a yearly "
                    "basis, and it is not sustainable, he said. "
                    "Nearly five years down the line, the policy’s "
                    "long-term future remains uncertain due to "
                    "dwindling production volumes, falling revenues "
                    "against rising expenditure, and ballooning public "
                    "sector debt and lack of diversified funding sources. "
                    "rn as we reprioritise,” he advocated.",
                    style: TextStyle(fontSize: 12)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
