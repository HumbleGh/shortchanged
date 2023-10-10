import 'package:flutter/material.dart';
import 'package:shortchanged/pages/settings/conplaints.dart';
import 'package:shortchanged/pages/settings/suggestions.dart';
import 'package:shortchanged/utils/app_layout.dart';

class ComplainsScreen extends StatefulWidget {
  const ComplainsScreen({super.key});

  @override
  State<ComplainsScreen> createState() => _ComplainsScreenState();
}

class _ComplainsScreenState extends State<ComplainsScreen> {
  final List<Widget> tabContents = [
    const Complaints(),
    const Suggestions(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Complaints & Suggestions',
        ),
        centerTitle: true,
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: Container(
            height: 50,
            width: 134,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
              color: Colors.blue,
              border: Border.all(
                color: Colors.blue,
                width: AppLayout.getHeight(1.0),
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 134,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: Colors.blue,
            border: Border.all(
              color: Colors.grey,
              width: AppLayout.getHeight(1.0),
            ),
          ),
          child: const Center(
            child: Text(
              'Suggetions',
            ),
          ),
        ),
      ]),
    );
  }
}
