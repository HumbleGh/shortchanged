import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 600,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(20),
                        vertical: AppLayout.getHeight(20)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Comments',
                                ),
                                Gap(AppLayout.getHeight(6)),
                                const Text(
                                  '170',
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.close,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                        Gap(AppLayout.getHeight(10)),
                        const Divider(),
                        Gap(AppLayout.getHeight(20)),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              child: Image.asset('assets/images/Profile.png'),
                            ),
                            Gap(AppLayout.getHeight(14)),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      width: 1, color: Colors.grey.shade300),
                                  color: Colors.white,
                                ),
                                height: 50,
                                child: const TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              });
        },
        child: SvgPicture.asset('assets/icons/Chat.svg'));
  }
}
