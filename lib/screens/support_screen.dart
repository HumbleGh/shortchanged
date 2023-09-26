import 'package:flutter/material.dart';
import 'package:shortchanged/utils/app_layout.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessibility'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20))),
    );
  }
}
