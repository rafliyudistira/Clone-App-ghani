// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: const TabBar(
            // labelColor: Colors.blue,
            tabs: [
              Tab(
                text: "For You",
              ),
              Tab(
                text: "Top Charts",
              ),
              Tab(
                text: "Children",
              ),
              Tab(
                text: "Categories",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
                // color: Colors.red[100],
                ),
            Container(
                // color: Colors.green[100],
                ),
            Container(
                // color: Colors.blue[100],
                ),
            Container(
                // color: Colors.blue[100],
                ),
          ],
        ),
      ),
    );
  }
}
