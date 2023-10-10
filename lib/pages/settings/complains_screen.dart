import 'package:flutter/material.dart';

class ComplainsScreen extends StatefulWidget {
  const ComplainsScreen({super.key});

  @override
  State<ComplainsScreen> createState() => _ComplainsScreenState();
}

class _ComplainsScreenState extends State<ComplainsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Complaints & Suggestions',
        ),
        centerTitle: true,
      ),
    );
  }
}
