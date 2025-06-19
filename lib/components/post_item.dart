import 'package:flutter/material.dart';
import 'package:map_project/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/temp/user1.png', width: 40, height: 40),
              SizedBox(width: 16),
              Text(
                user,
                style: AppText.subtitle3),
            ],
          ),
          SizedBox(height: 16),
          Image.asset('assets/temp/post.jpg'),
          Text(
            'best free night club images. Free for use No attribution required free images from iStoi Stockck.',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
