import 'package:flutter/material.dart';
import 'package:iiitbhopal_one/mainpage.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreens extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new MainPage(),
      title: new Text(
        'IIIT BHOPAL',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.asset(
        "assets/images/iiit_logo.png",
        height: 1000,
        width: 1000,
      ),
      backgroundColor: Colors.white,
      useLoader: false,
    ));
  }
}
