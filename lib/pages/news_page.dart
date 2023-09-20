import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);
  @override
  State<NewsPage> createState() => _NewsPage();
}

class _NewsPage extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            Material(
              child: SizedBox(
                height: 70,
                // color: Colors.transparent,
                child: TabBar(
                  labelColor: Colors.white,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                      top: 10, left: 0, right: 0, bottom: 10),
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  tabs: [
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.blue, width: 1)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Chat"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.blue, width: 1)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Status"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.blue, width: 1)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Call"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.blue, width: 1)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Call"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.blue, width: 1)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Call"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    padding: const EdgeInsets.all(15),
                    itemCount: 20,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: Text("Chat List $index"),
                        subtitle: const Text("Tab bar ui"),
                        trailing: const Icon(Icons.arrow_circle_right_sharp),
                      );
                    },
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.all(15),
                    itemCount: 20,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: Text("Chat List $index"),
                        subtitle: const Text("Tab bar ui"),
                        trailing: const Icon(Icons.arrow_circle_right_sharp),
                      );
                    },
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.all(15),
                    itemCount: 20,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: Text("Chat List $index"),
                        subtitle: const Text("Tab bar ui"),
                        trailing: const Icon(Icons.arrow_circle_right_sharp),
                      );
                    },
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.all(15),
                    itemCount: 20,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: Text("Status List $index"),
                        subtitle: const Text("Tab bar ui"),
                        trailing: const Icon(Icons.arrow_circle_right_sharp),
                      );
                    },
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.all(15),
                    itemCount: 20,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: Text("Call List $index"),
                        subtitle: const Text("Tab bar ui"),
                        trailing: const Icon(Icons.arrow_circle_right_sharp),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
