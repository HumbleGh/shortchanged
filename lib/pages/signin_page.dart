import 'package:flutter/material.dart';
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
      ])),
    );
  }
}
