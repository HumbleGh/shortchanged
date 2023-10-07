import 'package:flutter/material.dart';
import 'package:shortchanged/utils/app_layout.dart';

class OptionCard extends StatelessWidget {
  final String option;
  const OptionCard({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(16)),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(AppLayout.getHeight(6))),
      child: Text(option),
    );
  }
}
