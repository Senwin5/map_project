import 'package:flutter/material.dart';
import 'package:map_project/login_page.dart';
import 'package:map_project/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Urbanist',
      scaffoldBackgroundColor: AppColors.background,),
      home: LoginPage(),
    );
  }
}
