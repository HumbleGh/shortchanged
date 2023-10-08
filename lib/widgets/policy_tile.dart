import 'package:flutter/material.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';

class PolicyTile extends StatelessWidget {
  final String title;
  final String news;

  const PolicyTile({super.key, required this.news, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.headLineStyle3,
              ),
              Text(news)
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
          )
        ],
      ),
    );
  }
}
