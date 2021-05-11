import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tenun_app/constans.dart';
import 'package:tenun_app/screens/about/about_screen.dart';
import 'package:tenun_app/screens/favorite/favorite_screen.dart';
import 'package:tenun_app/screens/home/home_screen.dart';
import 'package:tenun_app/screens/profile/profile_screen.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import '../enums.dart';

class MainPage extends StatefulWidget {
  static String routeName = "/mainPage";
  const MainPage({
    Key key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    FavoriteScreen(),
    AboutScreen()
  ];

  void onTapTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTapTapped,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Color(0xFFB6B6B6),
          elevation: 2,
          type: BottomNavigationBarType.fixed,
          iconSize: 25,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house),
              label: "Halaman Utama",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: "Favorit",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_3),
              label: "Tentang Kami",
            ),
          ]),
    );
  }
}
