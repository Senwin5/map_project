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
      body: ListView(children:mockUsersFromServer(),)
    );
  }

// adding a method call _userItem for the list of user and profile
  Widget _userItem() {
    return Row(
      children: [
        Image.asset('assets/temp/user1.png', width: 40, height: 40),
        SizedBox(width: 16),
        Text('Serah Foernandes'),
      ],
    );
  }

// creating list of widget e'g mockUsersFromServer from server
  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++)
 {
      users.add(_userItem());
    }   
    return users;
  }
}
