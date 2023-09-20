import 'package:flutter/material.dart';
import 'package:shortchanged/screens/coding_content.dart';
import 'package:shortchanged/screens/education_content.dart';
import 'package:shortchanged/screens/health_content.dart';
import 'package:shortchanged/screens/politics_content.dart';
import 'package:shortchanged/screens/sports_content.dart';
import 'package:shortchanged/utils/app_style.dart';

class PolicyPage extends StatefulWidget {
  const PolicyPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PolicyPageState createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  final List<String> tabTitles = [
    "Sports",
    "Coding",
    "Education",
    "Health",
    "Politics",
  ];
  int _currentIndex = 0;

  final List<Widget> tabContents = [
    const SportsContent(),
    const CodingContent(),
    const EducationContent(),
    const HealthContent(),
    const PoliticsContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabTitles.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    child: SizedBox(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: _currentIndex == index
                              ? Colors.blue
                              : Colors.grey.shade200,
                          border: Border.all(
                            color: _currentIndex == index
                                ? Colors.blue
                                : Colors.grey.shade200,
                            width: 1.0,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            tabTitles[index],
                            style: TextStyle(
                              color: _currentIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey.shade200,
                child: tabContents[
                    _currentIndex], // Display the selected content page
              ),
            ),
          ],
        ),
      ),
    );
  }
}
