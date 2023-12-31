import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/pages/home/home_screen.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/utils/onboarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  // final int _currentPage = 0;

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
                    image: AssetImage(contents[i].image),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  height: AppLayout.getHeight(300),
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(20),
                      horizontal: AppLayout.getHeight(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          contents[i].title,
                          style: Styles.headLineStyle1,
                        ),
                        Gap(AppLayout.getHeight(10)),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                        ),
                        const Gap(60),
                        if (i == contents.length - 1)
                          GestureDetector(
                            onTap: () {
                              // Navigate to the homepage
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: AppLayout.getHeight(20),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getHeight(12)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Get Started',
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Colors.white),
                                  ),
                                  Gap(AppLayout.getHeight(10)),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        if (i < contents.length - 1)
                          GestureDetector(
                            onTap: () {
                              // Go to the next page
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: AppLayout.getHeight(20),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getHeight(12)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Next',
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Colors.white),
                                  ),
                                  Gap(AppLayout.getHeight(10)),
                                  const Icon(
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
