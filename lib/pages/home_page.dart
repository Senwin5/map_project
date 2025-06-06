import 'package:flutter/material.dart';
import 'package:map_project/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text('SenwinFlutter'),
        centerTitle: false,
        actions: [Icon(Icons.location_on_outlined)],
      ),
      body: Column(children: mockUsersFromServer()),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset('assets/temp/user1.png', width: 40, height: 40),
        SizedBox(width: 16),
        Text('Serah Foernandes'),
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 20; i) {
      users.add(_userItem());
    }
    return users;
  }
}
