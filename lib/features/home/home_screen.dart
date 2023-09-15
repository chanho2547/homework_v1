import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thread_homework/features/home/widgets/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = "Home";
  static const String routeUrl = "/Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('@',
      //       style: TextStyle(
      //           fontFamily: 'Billabong',
      //           fontSize: 35.0,
      //           fontWeight: FontWeight.bold)),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 쓰레드 아이콘
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('@',
                      style: TextStyle(
                          fontFamily: 'Billabong',
                          fontSize: 39.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const PostWidget(user: "Elon musk", contents: "I made a rocket!"),
              for (int i = 0; i < 20; i++)
                PostWidget(user: "User $i", contents: "Test contents $i"),
            ],
          ),
        ),
      ),
    );
  }
}
