import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/screens/login_page.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 14,
      navigateAfterSeconds: LoginPage(),
      //imageBackground: ,
      image: Image.asset('images/logo.jpeg'),
      title: Text(
        "Nacional",
        style: TextStyle(color: white, fontSize: 25),
      ),
      //image: Image.asset('assets/img/logo.png'),
      backgroundColor: pink,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: white,
    );
  }
}
