import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      children: [
        Container(
          height: 500,
          width: 200,
          child: Image(
            image: AssetImage('assets/images/allthree.png'),
          ),
        ),
        Text(
          'SHORTCHANGED',
          style: Styles.headLineStyle1,
          textAlign: TextAlign.center,
        ),
        Text(
          'Lorem ipsum dolor sit amet consectetur\n adipiscing elit.'
          'Aenean neque porta feu',
          textAlign: TextAlign.center,
        ),
        Gap(20),
      ],
    ));
  }
}
