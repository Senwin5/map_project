import 'package:flutter/material.dart';
import 'package:map_project/components/app_text_field.dart';
import 'package:map_project/components/toolbar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Toolbar(title:'Edit Profile'),
      body: Column(
        children: [
          AppTextField(hint: 'First Name'),
          AppTextField(hint: 'Last Name'),
          AppTextField(hint: 'Phone Number'),
          AppTextField(hint: 'Location'),
        ],
      ),
    );
  }
}