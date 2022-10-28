// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:access_bank_ui/pages/profile/profile_.dart';

import 'pages/menu_page/menu_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page/main_body.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> _page = const [
    MainBodyWidget(),
    MenuWidget(),
    ProfileWidget(),
  ];

  int _selectedIndex = 0;

  void _changeNavIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffE5E9F3),
      body: _page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 60,
        onTap: _changeNavIndex,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 64, 103, 158),
        // backgroundColor: Colors.orange[900],
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color.fromARGB(124, 64, 103, 158),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_sharp),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
