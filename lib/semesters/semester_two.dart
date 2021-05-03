import 'package:flutter/material.dart';

class Semester_two extends StatefulWidget {
  final Color color;
  Semester_two({this.color});
  @override
  _Semester_twoState createState() => _Semester_twoState();
}

class _Semester_twoState extends State<Semester_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text("Semester Two Notes"),
      ),
    );
  }
}
