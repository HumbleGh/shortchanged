import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String dropdownValue = 'Male';
  @override
  Widget build(BuildContext context) {
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.black)),
    );
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            width: 150,
            height: 150,
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('First Name*'),
                        Gap(5),
                        SizedBox(
                          width: 180,
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
          Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(),
          ),
        ],
      )),
    );
  }
}
