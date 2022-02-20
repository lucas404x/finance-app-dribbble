import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/constants/app_colors.dart';
import 'app/pages/root/root_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme().apply(
            displayColor: AppColors.ebonyClay, bodyColor: AppColors.ebonyClay),
        backgroundColor: AppColors.backgroundColor,
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
    );
  }
}
