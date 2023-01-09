// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:clone_app/Screens/apps.dart';
import 'package:clone_app/Screens/books.dart';
import 'package:clone_app/Screens/games.dart';
import 'package:clone_app/Screens/offers.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key, required this.title});
  final String title;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.games), label: "Games"),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_sharp), label: "Offers"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Books"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[200],
      ),
    );
  }
}

List<Widget> _pages = <Widget>[
  Games(),
  Apps(),
  Offers(),
  Books(),
];
