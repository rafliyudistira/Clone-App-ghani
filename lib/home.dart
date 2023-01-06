// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:clone_app/widgets/searchbar.dart';
import 'package:clone_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key, required this.title});
  final String title;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SearchBar(),
      ),
      body: TabBarWidget(),
    );
  }
}
