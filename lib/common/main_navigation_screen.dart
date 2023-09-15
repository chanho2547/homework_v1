import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:thread_homework/common/widgets/nav_tab.dart';

import 'package:thread_homework/constants/sizes.dart';
import 'package:thread_homework/features/home/home_screen.dart';
import 'package:thread_homework/features/likes/likes_screen.dart';
import 'package:thread_homework/features/profile/profile_screen.dart';
import 'package:thread_homework/features/search/search_screen.dart';
import 'package:thread_homework/features/write/write_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key, required this.tab});
  static const String routeName = "mainNavigation";
  final String tab;

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  final List<String> _tabs = [
    "Home",
    "Search",
    "Write",
    "Likes",
    "Profile",
  ];

  late int _selectedIndex = _tabs.indexOf(widget.tab);

  void _onTap(int index) {
    context.go("/${_tabs[index]}");
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const HomeScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const SearchScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: const WriteScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const LikesScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: const ProfileScreen(),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(
          Sizes.size32,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavTab(
              icon: FontAwesomeIcons.home,
              isSelected: _selectedIndex == 0,
              onTap: () => _onTap(0),
            ),
            NavTab(
              icon: FontAwesomeIcons.search,
              isSelected: _selectedIndex == 1,
              onTap: () => _onTap(1),
            ),
            // NavTab(
            //   icon: FontAwesomeIcons.pen,
            //   isSelected: _selectedIndex == 2,
            //   onTap: () => _onTap(2),
            // ),

            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  clipBehavior:
                      Clip.antiAliasWithSaveLayer, // borderRadius를 적용하기 위해 추가
                  builder: (BuildContext context) {
                    return FractionallySizedBox(
                      heightFactor: 0.9, // 화면의 80% 높이만큼 설정
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(
                                  25.0)), // 여기서 borderRadius를 설정
                          color: Colors.white, // 백그라운드 컬러 설정
                        ),
                        child: const WriteScreen(),
                      ),
                    );
                  },
                  isScrollControlled: true,
                  backgroundColor:
                      Colors.transparent, // backgroundColor를 투명하게 설정
                );
              },
              child: AnimatedOpacity(
                opacity: _selectedIndex == 2 ? 1 : 0.6,
                duration: const Duration(milliseconds: 300),
                child: Icon(
                  FontAwesomeIcons.pen,
                  color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                  size: Sizes.size28,
                ),
              ),
            ),

            NavTab(
              icon: FontAwesomeIcons.heart,
              isSelected: _selectedIndex == 3,
              onTap: () => _onTap(3),
            ),
            NavTab(
              icon: FontAwesomeIcons.user,
              isSelected: _selectedIndex == 4,
              onTap: () => _onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
