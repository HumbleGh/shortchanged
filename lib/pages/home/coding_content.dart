import 'package:flutter/material.dart';

class CodingContent extends StatefulWidget {
  const CodingContent({super.key});

  @override
  State<CodingContent> createState() => _CodingContentState();
}

class _CodingContentState extends State<CodingContent> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('This is the coding content')),
    );
  }
}
