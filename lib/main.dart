import 'package:flutter/material.dart';
import 'package:tenun_app/routes.dart';
import 'package:tenun_app/screens/splash/splash_screen.dart';
import 'package:tenun_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
