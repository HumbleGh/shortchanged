import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shortchanged/screens/sports_content.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  /// List of Tab Bar Item
  List<String> items = [
    "Sports",
    "Coding",
    "Health",
    "Education",
    "Politics",
  ];

  /// List of body icon
  List<dynamic> content = [
    const SportsContent(),
    Icons.explore,
    Icons.search,
    Icons.feed,
    Icons.post_add,
    Icons.local_activity,
    Icons.settings,
    Icons.person
  ];
  int current = 0;

  /////////////////////////////////////
  //@CodeWithFlexz on Instagram
  //
  //AmirBayat0 on Github
  //Programming with Flexz on Youtube
  /////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          /// CUSTOM TABBAR
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: AnimatedContainer(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.all(5),
                          // width: 80,
                          height: 45,
                          decoration: BoxDecoration(
                            color:
                                current == index ? Colors.blue : Colors.white54,
                            borderRadius: current == index
                                ? BorderRadius.circular(50)
                                : BorderRadius.circular(50),
                            border: current == index
                                ? Border.all(color: Colors.blue, width: 2)
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              items[index],
                              style: GoogleFonts.laila(
                                  fontWeight: FontWeight.w500,
                                  color: current == index
                                      ? Colors.white
                                      : Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),

          /// MAIN BODY
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  items[current],
                  style: GoogleFonts.laila(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.deepPurple),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
