import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: AppLayout.getHeight(60),
                    backgroundImage: const AssetImage('assets/images/man.png'),
                  ),
                  Positioned(
                    top: AppLayout.getHeight(60 + 20),
                    left: AppLayout.getHeight(60 + 20),
                    child: Container(
                      width: AppLayout.getHeight(40),
                      height: AppLayout.getHeight(40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.shade100),
                      child: SvgPicture.asset(
                        'assets/icons/Camera.svg',
                        height: 10,
                        width: 10,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('First Name'),
                      Gap(AppLayout.getHeight(4)),
                      const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: 'John'),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(14)),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Last Name'),
                      Gap(AppLayout.getHeight(4)),
                      const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Doe'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Username'),
                Gap(AppLayout.getHeight(4)),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'johndoe'),
                ),
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Email'),
                  Gap(AppLayout.getHeight(4)),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'example@gmail.com'),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
              margin: EdgeInsets.only(bottom: AppLayout.getHeight(40.0)),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(4)),
              child: const Text(
                'Update Profile',
                style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
