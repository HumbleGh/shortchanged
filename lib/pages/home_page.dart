import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/screens/coding_content.dart';
import 'package:shortchanged/screens/education_content.dart';
import 'package:shortchanged/screens/health_content.dart';
import 'package:shortchanged/screens/politics_content.dart';
import 'package:shortchanged/screens/sports_content.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/widgets/title_notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
              child: const Column(
                children: [TitleNotification(title: 'My Feed')],
              ),
            ),
            const Gap(10),
            Container(
              margin: EdgeInsets.only(bottom: AppLayout.getHeight(15.0)),
              height: AppLayout.getHeight(40.0),
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
                          horizontal: 15.0,
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
