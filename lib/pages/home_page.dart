import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_project/components/post_item.dart';
import 'package:map_project/components/toolbar.dart';
import 'package:map_project/styles/app_colors.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar:Toolbar(title: 'Senwin', actions: [
        SvgPicture.asset('assets/svg/ic_location.svg')
      ],),//appbar need a size 64
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(user: users[index]);
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 24,
          );
        },
      ),
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
