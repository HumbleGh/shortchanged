import 'package:flutter/material.dart';

class HealthContent extends StatefulWidget {
  const HealthContent({super.key});

  @override
  State<HealthContent> createState() => _HealthContentState();
}

class _HealthContentState extends State<HealthContent> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('This is the health content')),
    );
  }
}
