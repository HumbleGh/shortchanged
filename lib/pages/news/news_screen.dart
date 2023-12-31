import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/widgets/comment_card.dart';

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
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
            height: AppLayout.getHeight(200),
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              child: Image.asset(
                'assets/images/medium1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(12),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'Ghana',
                      style: TextStyle(color: Colors.blue, fontSize: 10),
                    ),
                    Gap(AppLayout.getHeight(4)),
                    Container(
                      width: AppLayout.getHeight(4.0),
                      height: AppLayout.getHeight(4.0),
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    Gap(AppLayout.getHeight(4)),

                    // The date goes here
                    const Text(
                      '23rd September, 2023',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/like.svg',
                          height: AppLayout.getHeight(16),
                          width: AppLayout.getHeight(16),
                          // ignore: deprecated_member_use
                          color: Colors.blue,
                        ),
                        Gap(AppLayout.getHeight(4)),
                        const Text('800')
                      ],
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/dislike.svg',

                          height: AppLayout.getHeight(16),
                          width: AppLayout.getHeight(16),
                          // ignore: deprecated_member_use
                          color: Colors.red,
                        ),
                        Gap(AppLayout.getHeight(4)),
                        const Text('800')
                      ],
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Row(
                      children: [
                        const CommentCard(),
                        Gap(AppLayout.getHeight(4)),
                        const Text('120')
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: AppLayout.getHeight(20),
            indent: AppLayout.getHeight(20),
            endIndent: AppLayout.getHeight(20),
          ),
          Column(
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
                child: const Text(
                    "Programme: The Project to Improve"
                    " the Quality and Outcomes of Education for All in Mali",
                    style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
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
