import 'package:flutter/material.dart';

class Semester_three extends StatefulWidget {
  final Color color;
  Semester_three({this.color});
  @override
  _Semester_threeState createState() => _Semester_threeState();
}

class _Semester_threeState extends State<Semester_three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text("Semester Three Notes"),
      ),
    );
  }
}
