import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color containerColor;
  const CategoryText(
      {super.key,
      required this.text,
      required this.textColor,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(50)),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 14),
      ),
    );
  }
}
