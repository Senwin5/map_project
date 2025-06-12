import 'package:flutter/material.dart';
import 'package:map_project/styles/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
        
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/temp/user1.png',
              width: 40, 
              height: 40),
            SizedBox(width: 16),
            Text(
              'Serah Foernandes',
              style: AppText.subtitle3),
          ],
        ),
        Image.asset('assets/temp/post.jpg')
      ],
    );
  }
}