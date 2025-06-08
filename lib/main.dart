import 'package:flutter/material.dart';
import 'package:map_project/main_page.dart';
import 'package:map_project/pages/home_page.dart';
import 'package:map_project/pages/login_page.dart'; 
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
      //home: LoginPage(),
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        '/home':(context) => HomePage(),
        '/main':(context) => MainPage(),
      },
    );
  }
}
