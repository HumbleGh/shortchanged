import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/pages/home/coding_content.dart';
import 'package:shortchanged/pages/home/education_content.dart';
import 'package:shortchanged/pages/home/health_content.dart';
import 'package:shortchanged/pages/policy/policy_all_content.dart';
import 'package:shortchanged/pages/home/politics_content.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/widgets/title_notification.dart';

class PolicyPage extends StatefulWidget {
  const PolicyPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PolicyPage createState() => _PolicyPage();
}

class _PolicyPage extends State<PolicyPage> {
  final List<String> tabTitles = [
    "All",
    "Education",
    "Health",
    "Sports",
    "Tourism",
  ];

  int _currentIndex = 0;

  final List<Widget> tabContents = [
    const PolicyAllContent(),
    const CodingContent(),
    const EducationContent(),
    const HealthContent(),
    const PoliticsContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(20.0),
                    vertical: AppLayout.getHeight(10.0)),
                child: const TitleNotification(title: 'Policy')),
            Gap(AppLayout.getHeight(10)),
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
                        margin:
                            EdgeInsets.only(left: AppLayout.getHeight(10.0)),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(15),
                          vertical: AppLayout.getHeight(10),
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(50)),
                          color: _currentIndex == index
                              ? Colors.blue
                              : Colors.grey.shade200,
                          border: Border.all(
                            color: _currentIndex == index
                                ? Colors.blue
                                : Colors.grey.shade200,
                            width: AppLayout.getHeight(1.0),
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
