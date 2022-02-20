import 'package:flutter/material.dart';

class CustomBottomNavigatorItem extends StatelessWidget {
  final int index;
  final Icon selectedIcon;
  final Icon unselectedIcon;
  final bool isItemSelected;
  final void Function(int) onTap;

  const CustomBottomNavigatorItem({
    Key? key,
    required this.index,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.isItemSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onTap.call(index),
        child: isItemSelected ? selectedIcon : unselectedIcon,
      );
  }
}
