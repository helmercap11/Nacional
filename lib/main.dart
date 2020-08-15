import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/screens/splash_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nacional',
      theme: ThemeData(
        primarySwatch: pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

