import 'package:flutter/material.dart';

final tabs = [
  "All",
  "Repliles",
  "Montions",
  "Videos",
  "Images",
  "Links",
  "Polls",
  "Files",
  "Events",
  "Articles",
];

class LikesScreen extends StatefulWidget {
  const LikesScreen({super.key});
  static const String routeName = "Likes";
  static const String routeUrl = "/Likes";

  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            splashFactory: NoSplash.splashFactory,
            isScrollable: true,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              for (var tab in tabs)
                Tab(
                  text: tab,
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (var tab in tabs)
              Center(
                child: Text(tab),
              ),
          ],
        ),
      ),
    );
  }
}
