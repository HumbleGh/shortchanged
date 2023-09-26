import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      body: Column(children: [
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
      ]),
    );
  }
}
