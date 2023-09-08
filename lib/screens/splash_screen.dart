import 'package:flutter/material.dart';
import 'package:shortchanged/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay before navigating to the next screen (e.g., 5 seconds)
    Future.delayed(const Duration(seconds: 5), () {
      // Navigate to the next screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            child: Image(image: AssetImage('assets/images/Logo.png')),
          ),
        ),
      ),
    );
  }
}
