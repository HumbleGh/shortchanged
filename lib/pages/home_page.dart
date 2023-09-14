import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/widgets/category_text.dart';

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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest News',
                  style: Styles.headLineStyle2,
                ),
                Text(
                  'View all',
                  style: Styles.headLineStyle4.copyWith(color: Colors.blue),
                )
              ],
            ),
          ),
          const Gap(20),
          SingleChildScrollView(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/phone.png'),
                      Text(
                        'News Content Goes Here',
                        style: Styles.headLineStyle3,
                      ),
                      Row(
                        children: [
                          Text(
                            'Ghana',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.blue),
                          ),
                          const Gap(10),
                          const Text(
                            '18th March, 2023',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
