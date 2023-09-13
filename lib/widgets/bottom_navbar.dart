import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:shortchanged/pages/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIindex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    // const SearchScreen(),
    // const TicketScreen(),
    // const ProfileScreen()
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
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blueGrey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.home_24_regular),
                activeIcon: Icon(FluentIcons.home_32_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.search_24_regular),
                activeIcon: Icon(FluentIcons.search_32_filled),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.ticket_horizontal_24_regular),
                activeIcon: Icon(FluentIcons.ticket_horizontal_24_filled),
                label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.person_24_regular),
                activeIcon: Icon(FluentIcons.person_32_filled),
                label: 'Profile'),
          ]),
    );
  }
}
