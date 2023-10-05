import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/screens/signin_screen.dart';
import 'package:shortchanged/screens/signup_screen.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      children: [
        SizedBox(
          height: AppLayout.getHeight(500),
          width: AppLayout.getHeight(200),
          child: const Image(
            image: AssetImage('assets/images/allthree.png'),
          ),
        ),
        Text(
          'SHORTCHANGED',
          style: Styles.headLineStyle1,
          textAlign: TextAlign.center,
        ),
        const Text(
          'Lorem ipsum dolor sit amet consectetur\n adipiscing elit.'
          'Aenean neque porta feu',
          textAlign: TextAlign.center,
        ),
        const Gap(40),
        GestureDetector(
          onTap: () {
            // Navigate to the signup page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpScreen(),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(20),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              'Create Account',
              textAlign: TextAlign.center,
              style: Styles.headLineStyle3.copyWith(color: Colors.white),
            ),
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            // Navigate to the Signin Page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignInScreen(),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(16),
            ),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(6)),
            ),
            child: Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: Styles.headLineStyle3.copyWith(color: Colors.black),
            ),
          ),
        ),
      ],
    ));
  }
}
