import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  final String text;
  final color;
  const CategoryText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(50)),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 14),
      ),
    );
  }
}
