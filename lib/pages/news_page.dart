import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shortchanged/screens/coding_content.dart';
import 'package:shortchanged/screens/education_content.dart';
import 'package:shortchanged/screens/health_content.dart';
import 'package:shortchanged/screens/politics_content.dart';
import 'package:shortchanged/screens/sports_content.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPage();
}

class _NewsPage extends State<NewsPage> {
  /// List of Tab Bar Item
  List<String> items = [
    "Sports",
    "Coding",
    "Health",
    "Education",
    "Politics",
  ];

  /// List of body icon
  List<Widget> widgets = [
    const SportsContent(),
    const CodingContent(),
    const HealthContent(),
    const EducationContent(),
    const PoliticsContent(),
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: SafeArea(
        child: Container(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.all(5),
                              // width: 80,
                              height: 45,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? Colors.blue
                                    : Colors.white54,
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
                                  style: GoogleFonts.manrope(
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
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      items[current],
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
