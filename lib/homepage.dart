import 'dart:convert';

import 'package:ipher/HomepageIndex.dart';
import 'package:ipher/courseindex.dart';
import 'package:ipher/profile.dart';
import 'package:ipher/trendingScreen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screens = [
    Homepage(),
    CourseScreen(),
     TrendingScreen(),
     Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      //  appBar: AppBar(),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 18, left: 8, right: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: NavigationBarTheme(
            data: const NavigationBarThemeData(
                indicatorColor: Colors.orangeAccent,
                indicatorShape: CircleBorder()),
            child: NavigationBar(
                selectedIndex: index,
                onDestinationSelected: (index) {
                  setState(() {
                    this.index = index;
                  });
                },
                shadowColor: Colors.red,
                height: 55,
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.countertops_sharp),
                    label: 'courses',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.trending_up),
                    label: 'Trending',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.person),
                    label: 'My profile',
                  ),
                ]),
          ),
        ),
      ),
      body: screens[index],
    );
  }
}
