import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPage();
}

class _NewsPage extends State<NewsPage> {
  /// List of Tab Bar Item
  List<String> items = [
    "Sports",
    "Coding",
    "Health",
    "Education",
    "Politics",
  ];

  /// List of body icon
  List<IconData> icons = [
    Icons.home,
    Icons.explore,
    Icons.search,
    Icons.feed,
    Icons.post_add,
  ];
  int current = 0;

  /////////////////////////////////////
  //@CodeWithFlexz on Instagram
  //
  //AmirBayat0 on Github
  //Programming with Flexz on Youtube
  /////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],

      /// APPBAR
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "Custom TabBar",
          style: GoogleFonts.laila(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            /// CUSTOM TABBAR
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            // width: 80,
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.blue
                                  : Colors.white54,
                              borderRadius: current == index
                                  ? BorderRadius.circular(50)
                                  : BorderRadius.circular(50),
                              border: current == index
                                  ? Border.all(color: Colors.blue, width: 2)
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: GoogleFonts.laila(
                                    fontWeight: FontWeight.w500,
                                    color: current == index
                                        ? Colors.white
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        // Visibility(
                        //     visible: current == index,
                        //     child: Container(
                        //       width: 5,
                        //       height: 5,
                        //       decoration: const BoxDecoration(
                        //           color: Colors.deepPurpleAccent,
                        //           shape: BoxShape.circle),
                        //     ),
                        //     )
                      ],
                    );
                  }),
            ),

            /// MAIN BODY
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              height: 550,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icons[current],
                    size: 200,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    items[current],
                    style: GoogleFonts.laila(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
