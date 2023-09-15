import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thread_homework/constants/gaps.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static const String routeName = "Search";
  static const String routeUrl = "/Search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          // toolbarHeight: Sizes.size60,

          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gaps.h10,
              Text(
                'Search',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CupertinoSearchTextField(),
                ),
                for (int i = 0; i < 10; i++)
                  ListTile(
                    leading: const CircleAvatar(),
                    title: const Text("Username"),
                    subtitle: const Text("Content"),
                    trailing: Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 100,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Follow"),
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
