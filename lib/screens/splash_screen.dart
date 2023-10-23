import 'package:flutter/material.dart';

import 'new_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay before navigating to the next screen (e.g., 3 seconds)
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the next screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const NewScreen()),
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
