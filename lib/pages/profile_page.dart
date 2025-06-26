import 'package:flutter/material.dart';
import 'package:map_project/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/temp/user1.png', width: 90, height: 90),
          Text('Mandy Mary Monday', style: AppText.header2),
          Text('Madacaster lol', style: AppText.subtitle3),
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
          Divider(thickness: 1, height:24),
        ],
      ),
    );
  }
}
