import 'package:flutter/material.dart';

class Semester_Five extends StatefulWidget {
  final Color color;
  Semester_Five({this.color});
  @override
  _Semester_FiveState createState() => _Semester_FiveState();
}

class _Semester_FiveState extends State<Semester_Five> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text("Semester Five Notes"),
      ),
    );
  }
}
