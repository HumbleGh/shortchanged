import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      children: [
        const Expanded(
          child: SizedBox(
            height: 500,
            width: 200,
            child: Image(
              image: AssetImage('assets/images/allthree.png'),
            ),
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
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
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
        const Gap(20),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: Styles.headLineStyle3.copyWith(color: Colors.black),
          ),
        ),
      ],
    ));
  }
}
