// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int index = 0;
  final pages = [
    Center(
      child: Text('PAGE1'),
    ),
    Center(
      child: Text('PAGE2'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
          height: 50,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          // ignore: prefer_const_literals_to_create_immutables
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: 'TAB1'),
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: 'TAB2'),
          ]),
    );
  }
}
