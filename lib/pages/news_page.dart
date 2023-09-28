import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/pages/notification_page.dart';
import 'package:shortchanged/screens/news_screen.dart';
import 'package:shortchanged/utils/app_layout.dart';
import 'package:shortchanged/utils/app_style.dart';
import 'package:shortchanged/widgets/large_news_card.dart';
import 'package:shortchanged/widgets/small_news_card.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'News',
            style: Styles.headLineStyle1,
          ),
          centerTitle: false,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const NotificationPage()),
                  ),
                );
              },
              child: Container(
                height: 24,
                width: 24,
                margin: EdgeInsets.only(right: AppLayout.getHeight(20)),
                child: SvgPicture.asset(
                  'assets/icons/Notification.svg',
                  height: 18,
                ),
              ),
            )
          ]),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
              ),
              Container(
                height: 47,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.grey.shade400)),
                child: TextField(
                    cursorColor: const Color(0x3C3D4000),
                    decoration: InputDecoration(
                      icon: SvgPicture.asset(
                        'assets/icons/search-normal.svg',
                        height: AppLayout.getHeight(18),
                        width: AppLayout.getHeight(18),
                      ),
                      border: InputBorder.none,
                      hintText: 'Search for news',
                    )),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewsScreen()));
                  },
                  child: const LargeNewsCard()),
              Gap(AppLayout.getHeight(20)),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [SmallNewsCard(int: 1), SmallNewsCard(int: 2)],
                ),
              ),
              const Gap(20),
              const LargeNewsCard()
            ],
          ),
        ],
      ),
    );
  }
}
