import 'package:flutter/material.dart';
import 'package:map_project/components/toolbar.dart';
import 'package:map_project/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  print('Editation');
                  break;
                case ProfileMenu.logout:
                  print('Log out System');
                  break;
              }
            },
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: ProfileMenu.edit,
                child: Text('Edit'),
              ),
              PopupMenuItem(
                value: ProfileMenu.logout,
                child: Text('Log Out'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 24),

          // 👇 Decorative background around the profile image
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 81, 68, 67), // Light blue background
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(4),
            child: const CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('assets/temp/user1.png'),
            ),
          ),

          const SizedBox(height: 24),
          const Text('Mandy Mary Monday', style: AppText.header2),
          const SizedBox(height: 12),
          const Text('Madagascar', style: AppText.subtitle3),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              _ProfileStat(count: '472', label: 'Followers'),
              _ProfileStat(count: '169', label: 'Post'),
              _ProfileStat(count: '220', label: 'Following'),
            ],
          ),
          const Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }
}

class _ProfileStat extends StatelessWidget {
  final String count;
  final String label;

  const _ProfileStat({required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count, style: AppText.header2),
        Text(label),
      ],
    );
  }
}
