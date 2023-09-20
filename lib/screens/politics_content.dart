import 'package:flutter/material.dart';

class PoliticsContent extends StatefulWidget {
  const PoliticsContent({super.key});

  @override
  State<PoliticsContent> createState() => _PoliticsContentState();
}

class _PoliticsContentState extends State<PoliticsContent> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('This is the politics content'),
      ),
    );
  }
}
