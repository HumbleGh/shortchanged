import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';

class IconTextIcon extends StatelessWidget {
  const IconTextIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 30,
            ),
            Gap(AppLayout.getHeight(12)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Humble Osei',
                  style: Styles.headLineStyle2,
                ),
                const Text('humbleosei@gmail.com')
              ],
            ),
          ],
        ),
        SvgPicture.asset('assets/icons/edit-2.svg')
      ],
    );
  }
}
