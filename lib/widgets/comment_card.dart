import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/widgets/comment.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: AppLayout.getHeight(800),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(20)),
                          child: Row(
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
                        ),
                        Gap(AppLayout.getHeight(5.0)),
                        const Divider(),
                        Gap(AppLayout.getHeight(20)),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(20)),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: Image.asset('assets/images/Profile.png'),
                              ),
                              Gap(AppLayout.getHeight(14)),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppLayout.getHeight(20)),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        AppLayout.getHeight(50)),
                                    border: Border.all(
                                        width: 1, color: Colors.grey.shade300),
                                    color: Colors.transparent,
                                  ),
                                  height: AppLayout.getHeight(50),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Add a comment',
                                        hintStyle: TextStyle(
                                            color: Colors.grey.shade300)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(AppLayout.getHeight(20)),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                const Comment(),
                                Gap(AppLayout.getHeight(20)),
                                const Comment(),
                                Gap(AppLayout.getHeight(20)),
                                const Comment(),
                                Gap(AppLayout.getHeight(20)),
                                const Comment(),
                                Gap(AppLayout.getHeight(20)),
                                const Comment(),
                                Gap(AppLayout.getHeight(20)),
                                const Comment(),
                                Gap(AppLayout.getHeight(20)),
                              ],
                            ),
                          ),
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
