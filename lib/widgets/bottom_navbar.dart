import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import Flutter SVG package
import 'package:shortchanged/pages/home_page.dart';
import 'package:shortchanged/pages/news_page.dart';
import 'package:shortchanged/pages/policy_page.dart';
import 'package:shortchanged/pages/polls_page.dart';
import 'package:shortchanged/pages/settings_page.dart';

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
              width: 24,
              height: 24,
            ), // Provide icon
            activeIcon: SvgPicture.asset(
              'assets/icons/HomeBold.svg',
              width: 24,
              height: 24,
            ), // Provide activeIcon
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(FluentIcons.news_24_regular), // Provide icon
            activeIcon: Icon(FluentIcons.news_24_filled), // Provide activeIcon
            label: 'News',
          ),
          const BottomNavigationBarItem(
            icon:
                Icon(FluentIcons.ticket_horizontal_24_regular), // Provide icon
            activeIcon: Icon(
                FluentIcons.ticket_horizontal_24_filled), // Provide activeIcon
            label: 'Policy',
          ),
          const BottomNavigationBarItem(
            icon: Icon(FluentIcons.poll_16_regular), // Provide icon
            activeIcon: Icon(FluentIcons.poll_24_filled), // Provide activeIcon
            label: 'Polls',
          ),
          const BottomNavigationBarItem(
            icon: Icon(FluentIcons.settings_24_regular), // Provide icon
            activeIcon:
                Icon(FluentIcons.settings_24_filled), // Provide activeIcon
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
