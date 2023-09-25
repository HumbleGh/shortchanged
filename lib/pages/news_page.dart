import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shortchanged/screens/news_screen.dart';
import 'package:shortchanged/widgets/large_news_card.dart';
import 'package:shortchanged/widgets/small_news_card.dart';
import 'package:shortchanged/widgets/title_notification.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const TitleNotification(title: 'News'),
              ),
              Container(
                height: 47,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.grey.shade400)),
                child: const Row(children: [
                  Icon(Icons.search),
                  Gap(8),
                  Text('Serach for news')
                ]),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewsScreen()));
                  },
                  child: const LargeNewsCard()),
              const Gap(20),
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
