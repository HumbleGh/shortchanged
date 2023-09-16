import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/widgets/category_text.dart';
import 'package:shortchanged/widgets/double_text.dart';
import 'package:shortchanged/widgets/large_news_card.dart';
import 'package:shortchanged/widgets/medium_news_card.dart';
import 'package:shortchanged/widgets/small_news_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Feed',
                      style: Styles.headLineStyle1,
                    ),
                    const Icon(
                      Icons.notifications,
                      color: Colors.black,
                    )
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [
                CategoryText(
                  text: 'Sports',
                  textColor: Colors.black,
                  containerColor: Colors.grey.shade200,
                ),
                const CategoryText(
                  text: 'Coding',
                  textColor: Colors.white,
                  containerColor: Colors.blue,
                ),
                CategoryText(
                  text: 'Education',
                  textColor: Colors.black,
                  containerColor: Colors.grey.shade200,
                ),
                CategoryText(
                  text: 'Health',
                  textColor: Colors.black,
                  containerColor: Colors.grey.shade200,
                ),
                CategoryText(
                  text: 'Politics',
                  textColor: Colors.black,
                  containerColor: Colors.grey.shade200,
                ),
              ]),
            ),
          ),
          const Gap(20),
          const DoubleText(bigText: 'Latest News', smallText: 'view all'),
          const Gap(20),
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
          const DoubleText(bigText: 'Top Policies', smallText: 'view all'),
          const Gap(14),
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
              bigText: 'Recently Added Polls', smallText: 'view all'),
          const Gap(20),
          Container(
            // height: 240,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Should FREE SHS be tied to E-Levy',
                      style: Styles.headLineStyle3,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
