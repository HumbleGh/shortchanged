import 'package:flutter/material.dart';

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
                color: Colors.blue,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            height: 300,
            width: double.infinity,
          ),
        ),
      ],
    ));
  }
}
