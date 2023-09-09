import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/utils/onboarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: contents.length,
        itemBuilder: (_, i) {
          return Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: AssetImage(
                          contents[i].image,
                        ),
                        fit: BoxFit.fitWidth)),
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  height: 300,
                  width: double.infinity,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: (20), horizontal: (20)),
                    child: Column(
                      children: [
                        Text(
                          contents[i].title,
                          style: Styles.headLineStyle1,
                        ),
                        Gap(10),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                        ),
                        Gap(60),
                        GestureDetector(
                          onTap: () {
                            if (_currentPage < contents.length - 1) {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            } else {
                              // Handle action when reaching the last page
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Next',
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                                Gap(10),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
