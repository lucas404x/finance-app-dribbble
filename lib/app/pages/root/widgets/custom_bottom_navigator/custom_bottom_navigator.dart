import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';
import 'custom_bottom_navigator_item.dart';

class CustomBottomNavigator extends StatelessWidget {
  final void Function(int) onItemSelected;
  final int currentIndex;

  const CustomBottomNavigator({
    Key? key,
    required this.onItemSelected,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Radius _radius = Radius.circular(42);
    const double _spaceBetweenIcons = 48;

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.ebonyClay,
        borderRadius: BorderRadius.only(topLeft: _radius, topRight: _radius),
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBottomNavigatorItem(
            index: 0,
            selectedIcon: const Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            unselectedIcon: const Icon(
              CupertinoIcons.home,
              color: Colors.white54,
            ),
            isItemSelected: currentIndex == 0,
            onTap: onItemSelected,
          ),
          const SizedBox(width: _spaceBetweenIcons,),
          CustomBottomNavigatorItem(
            index: 1,
            selectedIcon: const Icon(
              CupertinoIcons.creditcard_fill,
              color: Colors.white,
            ),
            unselectedIcon: const Icon(
              CupertinoIcons.creditcard_fill,
              color: Colors.white54,
            ),
            isItemSelected: currentIndex == 1,
            onTap: onItemSelected,
          ),
          const SizedBox(width: _spaceBetweenIcons,),        
          CustomBottomNavigatorItem(
            index: 2,
            selectedIcon: const Icon(
              CupertinoIcons.creditcard,
              color: Colors.white,
            ),
            unselectedIcon: const Icon(
              CupertinoIcons.creditcard,
              color: Colors.white54,
            ),
            isItemSelected: currentIndex == 2,
            onTap: onItemSelected,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              height: 30,
              child: VerticalDivider(
                color: Colors.white30,
                width: 3,
                thickness: 1.5,
              ),
            ),
          ),
          CustomBottomNavigatorItem(
            index: 3,
            selectedIcon: const Icon(
              CupertinoIcons.person_fill,
              color: Colors.white,
            ),
            unselectedIcon: const Icon(
              CupertinoIcons.person_fill,
              color: Colors.white54,
            ),
            isItemSelected: currentIndex == 3,
            onTap: onItemSelected,
          ),
        ],
      ),
    );
  }
}
