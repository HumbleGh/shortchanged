import 'package:flutter/material.dart';
import 'package:shortchanged/utils/app_style.dart';

class DoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  final Widget page;

  const DoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.page});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: Styles.headLineStyle3,
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the required page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page,
                ),
              );
            },
            child: Text(
              smallText,
              style: Styles.headLineStyle4.copyWith(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
