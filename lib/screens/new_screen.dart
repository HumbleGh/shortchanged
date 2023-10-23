import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sizer/sizer.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Container(
            height: 70.h,
            decoration: BoxDecoration(color: Colors.amber),
          ),
          Container(
            alignment: Alignment(50, 30),
            height: 30.h,
            decoration: BoxDecoration(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
