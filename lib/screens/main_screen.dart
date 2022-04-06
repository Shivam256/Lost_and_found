import 'package:flutter/material.dart';
import 'package:lost_and_found/components/custom_button.dart';
import 'package:lost_and_found/globals.dart';
import 'package:lost_and_found/components/custom_textfield.dart';
import 'package:lost_and_found/screens/login_screen.dart';

import 'package:lost_and_found/utils/API.dart';

import 'package:lost_and_found/screens/foundItem_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String id = "main_screen";
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // static const List<Widget>_widgetOptions = [
  //   FoundItemScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hii'),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
      ),
      body: FoundItemScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: primaryColor), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore, color: primaryColor), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_outlined, color: primaryColor), label: ''),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: primaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: primaryColor,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: Colors.red,size: 30),
        type: BottomNavigationBarType.fixed,

      ),
    );
  }
}
