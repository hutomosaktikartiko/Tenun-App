import 'package:flutter/material.dart';
import 'package:tenun_app/screens/main_page.dart';
import 'package:tenun_app/enums.dart';
import 'package:tenun_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
