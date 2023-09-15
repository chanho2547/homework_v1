import 'package:flutter/material.dart';
import 'package:thread_homework/constants/sizes.dart';

class NavTab extends StatelessWidget {
  const NavTab(
      {super.key,
      required this.icon,
      required this.isSelected,
      required this.onTap});

  final IconData icon;
  final bool isSelected;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: AnimatedOpacity(
        opacity: isSelected ? 1 : 0.6,
        duration: const Duration(milliseconds: 300),
        child: Icon(
          icon,
          color: isSelected ? Colors.black : Colors.grey,
          size: Sizes.size28,
        ),
      ),
    );
  }
}
