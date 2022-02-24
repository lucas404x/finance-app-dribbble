import 'package:flutter/material.dart';

import '../home/home_page.dart';
import 'widgets/custom_bottom_navigator/custom_bottom_navigator.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late final List<Widget> _pages;
  int _currentIndex = 0;

  @override
  void initState() {
    _pages = [const HomePage(), Container(), Container(), Container()];
    super.initState();
  }

  @override
  void dispose() {
    _pages.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 64),
            child: _pages[_currentIndex],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavigator(
              currentIndex: _currentIndex,
              onItemSelected: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
