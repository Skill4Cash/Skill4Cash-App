// ignore_for_file: prefer_const_constructors

import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/features/dashboard/views/dashboard_screen.dart';
import 'package:Skill4Cash/src/features/home/model/nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _children = [
    DashboardScreen(),
    Center(child: Text("2")),
    Center(child: Text("3")),
  ];

  int _currentPage = 0;

  int get currentPage => _currentPage;

  void onTabSelected(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentPage],
      bottomNavigationBar: NavBar(
        backgroundColor: Colors.white,
        color: Colors.grey,
        selectedColor: kPrimaryColor,
        onTabSelected: onTabSelected,
        items: [
          NavBarItem(img: Icons.home, iconText: 'Home'),
          NavBarItem(img: Icons.message_outlined, iconText: 'Message'),
          NavBarItem(img: Icons.settings, iconText: 'Settings'),
        ],
      ),
    );
  }
}