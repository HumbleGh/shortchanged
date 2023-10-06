import 'package:flutter/material.dart';
import 'package:shortchanged/utils/app_layout.dart';

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
      margin: EdgeInsets.only(left: AppLayout.getHeight(10)),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(14),
          vertical: AppLayout.getHeight(13)),
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(50)),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 14),
      ),
    );
  }
}
