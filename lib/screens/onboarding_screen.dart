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
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (_, i) {
          return Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/Boy.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Positioned(
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: const Text(
                      'Hey Man',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
