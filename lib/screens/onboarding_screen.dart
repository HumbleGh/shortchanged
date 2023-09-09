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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
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
                        padding: const EdgeInsets.symmetric(
                            vertical: (20), horizontal: (20)),
                        child: Column(
                          children: [
                            Text(
                              contents[i].title,
                              style: Styles.headLineStyle1,
                            ),
                            const Gap(10),
                            Text(
                              contents[i].description,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }));
  }
}
