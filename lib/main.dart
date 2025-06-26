import 'package:flutter/material.dart';
import 'package:map_project/pages/main_page.dart';
import 'package:map_project/pages/home_page.dart';
import 'package:map_project/pages/login_page.dart';
import 'package:map_project/styles/app_colors.dart';

//import 'package:map_project/pages/test_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      // Use this to test TestPage directly
      //home: MainPage(), 

      // Recommended routing setup
       initialRoute: '/',
       routes: {
         '/': (context) => LoginPage(),
         '/home': (context) => HomePage(),
         '/main': (context) => MainPage(),
      //   '/test': (context) => TestPage(),
       },
    );
  }
}

