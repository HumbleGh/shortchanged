import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(20)),
      height: 300,
      decoration: BoxDecoration(
          border: Border.all(
              width: AppLayout.getHeight(1.0), color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(10.0),
          )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jenny Wilson',
                        style: Styles.headLineStyle3,
                      ),
                      const Text('3 days ago')
                    ],
                  )
                ],
              ),
              const Icon(Icons.more_vert)
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(10)),
          const Expanded(
            child: Text(
                'Lorem ipsum dolor sit amet, consecteur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.'),
          ),
          Gap(AppLayout.getHeight(10)),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/like.svg',
                height: 18,
                // ignore: deprecated_member_use
                color: Colors.blue,
              ),
              const Gap(6),
              const Text('456'),
              Gap(AppLayout.getHeight(10)),
              SvgPicture.asset(
                'assets/icons/dislike.svg',
                height: 18,
                // ignore: deprecated_member_use
                color: Colors.red,
              ),
              const Gap(6),
              const Text('456'),
              Gap(AppLayout.getHeight(10)),
              SvgPicture.asset(
                'assets/icons/Chat.svg',
                height: 18,
                // ignore: deprecated_member_use
                color: Colors.blue,
              ),
              const Gap(6),
              const Text('456'),
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(12)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('1876 Reply'),
              SvgPicture.asset(
                'assets/icons/Vector.svg',
                height: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
