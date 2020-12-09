import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      /* Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
      splash:
          /* Icon(
        Icons.live_tv,
        color: Colors.red,
        size: 100,
      ),*/
          Image.asset('images/img1.jpg'),
      nextScreen: MyApp(),
      splashTransition: SplashTransition.sizeTransition,
      backgroundColor: Colors.black,
    ));
  }
}
