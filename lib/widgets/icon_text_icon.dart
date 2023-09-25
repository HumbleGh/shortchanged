import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';

class IconTextIcon extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final assetName;
  final String subtitle;
  final String title;
  const IconTextIcon(
      {super.key,
      required this.assetName,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              assetName,
              width: AppLayout.getHeight(24),
              height: AppLayout.getHeight(24),
            ),
            Gap(AppLayout.getHeight(12)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Styles.headLineStyle3,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
        ),
      ],
    );
  }
}
