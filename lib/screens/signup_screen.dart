import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/screens/signin_screen.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String dropdownValue = 'Male';
  @override
  Widget build(BuildContext context) {
    Container(
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
      height: AppLayout.getHeight(50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(6)),
          border: Border.all(color: Colors.black)),
    );
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getHeight(40)),
            width: AppLayout.getHeight(150),
            height: AppLayout.getHeight(150),
            child: const Image(image: AssetImage('assets/images/Logo.png')),
          ),
          // const Gap(10),
          Text(
            'Create an Account',
            style: Styles.headLineStyle1,
            textAlign: TextAlign.center,
          ),
          Center(
            child: Text(
              'Sign up now to get started with an account.',
              style: Styles.headLineStyle4,
            ),
          ),
          const Gap(30),
          Column(
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('First Name*'),
                        Gap(AppLayout.getHeight(5)),
                        SizedBox(
                          width: AppLayout.getHeight(180),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'John',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Last Name*'),
                        Gap(5),
                        SizedBox(
                          width: 180,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Doe',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text('Username')),
                  const Gap(5),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your prefered username',
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text('Email*')),
                  const Gap(5),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'example@gmail.com',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),

          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text('Email*')),
              const Gap(5),
              Container(
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      width: 0.5,
                    )),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  onChanged: (String? newVallue) {
                    setState(() {
                      dropdownValue = newVallue!;
                    });
                  },
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'Male',
                      child: Text(
                        'Male',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Female',
                      child: Text(
                        'Female',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text('Date of Birth')),
              const Gap(5),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now().subtract(Duration.zero),
                              lastDate: DateTime.now());
                        },
                        icon: const Icon(Icons.calendar_month)),
                    border: const OutlineInputBorder(),
                    hintText: 'Enter your prefered username',
                  ),
                ),
              ),
            ],
          ),
          const Gap(20),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey,
                ),
              ),
              const Gap(8),
              const Text('I have read and agree to the '),
              const Text(
                'Terms of Service',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(8)),
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                'Create an Account',
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
              const Text('Already have an account? '),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          const Gap(40),
        ],
      )),
    );
  }
}
