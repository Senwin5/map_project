import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map_project/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Bottom Navigation Bar')),
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_favorite.svg'),
            label: 'Favorite',
          ),
            BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_message.svg'),
            label: 'Add Post',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_message.svg'),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_user.svg'),
            label: 'User',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        //some specification and propert to add in there 'disable of icons ui
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  final Pages = [
    HomePage(),
    Center(child: Text('Favorite'),),
    Center(child: Text('Add Post'),),
    Center(child: Text('Message'),),
    Center(child: Text('User'),),
    ];
}
