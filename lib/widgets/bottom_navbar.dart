import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import Flutter SVG package
import 'package:shortchanged/pages/home/home_page.dart';
import 'package:shortchanged/pages/news/news_page.dart';
import 'package:shortchanged/pages/policy/policy_page.dart';
import 'package:shortchanged/pages/polls/polls_page.dart';
import 'package:shortchanged/pages/settings/settings_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIindex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const NewsPage(),
    const PolicyPage(),
    const PollsPage(),
    const SettingsPage(),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _selectedIindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIindex,
        onTap: _onTappedItem,
        elevation: 10.0,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/HomeOutline.svg',
            ), // Provide icon
            activeIcon: SvgPicture.asset(
              'assets/icons/HomeBold.svg',
            ), // Provide activeIcon
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                'assets/icons/DocumentOutline.svg'), // Provide icon
            activeIcon: SvgPicture.asset(
                'assets/icons/DocumentBold.svg'), // Provide activeIcon
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                'assets/icons/WorkOutline.svg'), // Provide icon
            activeIcon: SvgPicture.asset(
                'assets/icons/WorkBold.svg'), // Provide activeIcon
            label: 'Policy',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                'assets/icons/ChartOutline.svg'), // Provide icon
            activeIcon: SvgPicture.asset(
                'assets/icons/ChartBold.svg'), // Provide activeIcon
            label: 'Polls',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                'assets/icons/SettingOutline.svg'), // Provide icon
            activeIcon: SvgPicture.asset(
                'assets/icons/SettingBold.svg'), // Provide activeIcon
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
