import 'package:flutter/material.dart';
import 'package:iiitbhopal_two/mainpage.dart';
import 'package:iiitbhopal_two/register.dart';
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
      seconds: 8,
      navigateAfterSeconds: new Register(),
      title: new Text(
        'IIIT BHOPAL',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.asset(
        "assets/images/iiit_logo.png",
        height: 500,
        width: 500,
      ),
      backgroundColor: Colors.white,
      useLoader: false,
    ));
  }
}
