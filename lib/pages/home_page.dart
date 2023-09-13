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
              padding: EdgeInsets.only(left: 10),
              child: Row(children: [
                CategoryText(text: 'Sports', color: Colors.black),
                CategoryText(text: 'Coding', color: Colors.black),
                CategoryText(text: 'Education', color: Colors.black),
                CategoryText(text: 'Health', color: Colors.black),
                CategoryText(text: 'Politics', color: Colors.black),
              ]),
            ),
          )
        ],
      )),
    );
  }
}
