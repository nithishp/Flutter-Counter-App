// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fitness/pages/first_page.dart';
import 'package:fitness/pages/profile_page.dart';
import 'package:fitness/pages/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  void _navigateBottmomBar(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  final List _pages = [FirstPage(), ProfilePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Home Page")),
          backgroundColor: Colors.deepPurple[200],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedItem,
            onTap: _navigateBottmomBar,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]),
        body: _pages[_selectedItem]);
  }
}
