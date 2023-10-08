import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/screens/signup_screen.dart';
import 'package:shortchanged/screens/verification_screen.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 30.0),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: AppLayout.getHeight(100),
              width: AppLayout.getHeight(100),
              child: const Image(
                image: AssetImage('assets/images/Logo.png'),
                fit: BoxFit.cover,
              ),
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
            Gap(AppLayout.getHeight(40)),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter your Mobile Number',
                    style: Styles.textStyle,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: AppLayout.getHeight(1)),
                            borderRadius: BorderRadius.circular(4)),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(20),
                            vertical: AppLayout.getHeight(19)),
                        child: Row(
                          children: [
                            const Image(
                                image: AssetImage('assets/images/ghflag.png')),
                            Gap(AppLayout.getHeight(6)),
                            const Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: AppLayout.getHeight(260),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Mobile Number',
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
              margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(8)),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(8))),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerificationScreen()));
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account? '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
