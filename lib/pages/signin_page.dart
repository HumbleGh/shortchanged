import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          width: 150,
          height: 150,
          child: const Image(image: AssetImage('assets/images/Logo.png')),
        ),
        Text(
          'Sign in to your Account',
          style: Styles.headLineStyle1,
          textAlign: TextAlign.center,
        ),
        Center(
          child: Text(
            'Welcome back, please enter your details.',
            style: Styles.headLineStyle4,
          ),
        ),
        const Gap(20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Enter your Mobile Number'),
              const Gap(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/ghflag.png')),
                        const Gap(6),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'John',
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ])),
    );
  }
}
