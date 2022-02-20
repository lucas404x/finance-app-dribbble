import 'package:financial_dribbble_app/app/pages/root/widgets/custom_bottom_navigator.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late final List<Widget> pages;
  int _currentIndex = 0;

  @override
  void initState() {
    pages = const [HomePage()];
    super.initState();
  }

  @override
  void dispose() {
    pages.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigator(),
      body: pages[_currentIndex],
    );
  }
}
