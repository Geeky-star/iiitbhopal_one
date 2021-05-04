import 'package:flutter/material.dart';
import 'package:iiitbhopal_one/register.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
          ),
          Center(
            child: RaisedButton(
              color: Colors.green[50],
              child: Text("Sign Out"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              },
            ),
          )
        ],
      ),
    );
  }
}
