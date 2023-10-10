import 'package:flutter/material.dart';

class EducationContent extends StatefulWidget {
  const EducationContent({super.key});

  @override
  State<EducationContent> createState() => _EducationContentState();
}

class _EducationContentState extends State<EducationContent> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('This is the education content'),
      ),
    );
  }
}
