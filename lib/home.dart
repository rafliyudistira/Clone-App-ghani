// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:clone_app/widgets/searchbar.dart';
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
        body: Container(
      margin: EdgeInsets.only(top: 10),
      child: DefaultTabController(
        length: 5,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              pinned: false,
              backgroundColor: Colors.transparent,
              title: SearchBar(),
            ),
            SliverAppBar(
              elevation: 0,
              pinned: true,
              backgroundColor: ThemeData.dark().canvasColor,
              title: Container(
                // width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  child: TabBar(
                    indicatorWeight: 3,
                    indicatorColor: Colors.blue[200],
                    labelColor: Colors.blue[200],
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "For You",
                      ),
                      Tab(
                        text: "Top Charts",
                      ),
                      Tab(
                        text: "Events",
                      ),
                      Tab(
                        text: "Categories",
                      ),
                      Tab(
                        text: "Premium",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 800,
                child: Padding(
                  padding: EdgeInsets.all(50),
                  child: TabBarView(children: [
                    Text("Hello 1"),
                    Text("Hello 2"),
                    Text("Hello 3"),
                    Text("Hello 4"),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
