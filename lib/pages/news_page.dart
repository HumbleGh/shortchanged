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
        length: 3,
        child: Column(
          children: [
            Material(
              child: Container(
                height: 70,
                color: Colors.white,
                child: TabBar(
                  physics: const ClampingScrollPhysics(),
                  padding:
                      EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  unselectedLabelColor: Colors.pink,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pinkAccent),
                  tabs: [
                    Tab(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border:
                                Border.all(color: Colors.pinkAccent, width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Chat"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border:
                                Border.all(color: Colors.pinkAccent, width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Status"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border:
                                Border.all(color: Colors.pinkAccent, width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Call"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    padding: EdgeInsets.all(15),
                    itemCount: 20,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: Text("Chat List $index"),
                        subtitle: Text("Tab bar ui"),
                        trailing: Icon(Icons.arrow_circle_right_sharp),
                      );
                    },
                  ),
                  ListView.separated(
                    padding: EdgeInsets.all(15),
                    itemCount: 20,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: Text("Status List $index"),
                        subtitle: Text("Tab bar ui"),
                        trailing: Icon(Icons.arrow_circle_right_sharp),
                      );
                    },
                  ),
                  ListView.separated(
                    padding: EdgeInsets.all(15),
                    itemCount: 20,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: Text("Call List $index"),
                        subtitle: Text("Tab bar ui"),
                        trailing: Icon(Icons.arrow_circle_right_sharp),
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
