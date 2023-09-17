import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String option;
  const OptionCard({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(6)),
      child: Text(option),
    );
  }
}
