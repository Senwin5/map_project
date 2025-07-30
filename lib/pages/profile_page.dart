import 'package:flutter/material.dart';
import 'package:map_project/components/toolbar.dart';
import 'package:map_project/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<int>(
            onSelected: (value) {
              switch (value) {
                case 1:
                  print('Editation');
                case 2:
                  print('Log out System');
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('Edit'), value: 1),
                PopupMenuItem(child: Text('Log Out'), value: 2),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/temp/user1.png', width: 90, height: 90),
          SizedBox(height: 24),
          Text('Mandy Mary Monday', style: AppText.header2),
          SizedBox(height: 12),
          Text('Madacaster lol', style: AppText.subtitle3),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('472', style: AppText.header2),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [Text('169', style: AppText.header2), Text('Post')],
              ),
              Column(
                children: [
                  Text('222', style: AppText.header2),
                  Text('Following'),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }
}
