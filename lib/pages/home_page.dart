import 'package:flutter/material.dart';
import 'package:shortchanged/utils/app_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Feed',
                  style: Styles.headLineStyle1,
                ),
                const Icon(
                  Icons.notifications,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
