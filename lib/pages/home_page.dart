import 'package:flutter/material.dart';
import 'package:map_project/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:AppColors.background,
        title: Text('SenwinFlutter'),
        centerTitle: false,
      actions: [
        Icon(Icons.location_on_outlined),
      ],
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
