import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/widgets/category_text.dart';
import 'package:shortchanged/widgets/double_text.dart';
import 'package:shortchanged/widgets/medium_news_card.dart';

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
              ],
            ),
          ),
          const Gap(20),
          const DoubleText(bigText: 'Top Policies', smallText: 'view all'),
        ],
      )),
    );
  }
}
