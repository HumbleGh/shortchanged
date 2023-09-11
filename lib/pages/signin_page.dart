import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/pages/signup_page.dart';
import 'package:shortchanged/utils/app_style.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 30.0),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.symmetric(horizontal: 0),
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
            const Gap(40),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter your Mobile Number',
                    style: Styles.textStyle,
                  ),
                  const Gap(12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(4)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                        child: Row(
                          children: [
                            Image(
                                image: AssetImage('assets/images/ghflag.png')),
                            const Gap(6),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 260,
                        child: TextField(
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
              padding: const EdgeInsets.symmetric(vertical: 8),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(8)),
              child: MaterialButton(
                onPressed: () {},
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
                            builder: (context) => const SignUpPage()));
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
