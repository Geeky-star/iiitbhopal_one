import 'package:flutter/material.dart';

class Semester_Eight extends StatefulWidget {
  final Color color;
  Semester_Eight({this.color});

  @override
  _Semester_EightState createState() => _Semester_EightState();
}

class _Semester_EightState extends State<Semester_Eight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text("Semester Eighth Notes"),
      ),
    );
  }
}
