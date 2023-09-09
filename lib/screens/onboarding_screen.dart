import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(
                    'assets/images/Boy.jpg',
                  ),
                  fit: BoxFit.fitWidth)),
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            height: 300,
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: (20), horizontal: (20)),
              child: Column(
                children: [
                  Text(
                    'Education',
                    style: Styles.headLineStyle1,
                  ),
                  Gap(10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean neque porta feugiat tincidunt nunc, egestas semper sed aliquet. Diam d',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
