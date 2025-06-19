import 'package:flutter/material.dart';
import 'package:map_project/components/post_item.dart';
import 'package:map_project/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text('SenwinFlutter'),
        centerTitle: false,
        actions: [Icon(Icons.location_on_outlined)],
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return PostItem( user:users[index],);
      },),
    );
  }

  // adding a method call _userItem for the list of user and profile

  // creating list of widget e'g mockUsersFromServer from server
  mockUsersFromServer() {
    //List<Widget> users = [];
    for (var i = 0; i < 400; i++) {
      users.add('User number $i');
    }
  }
}
