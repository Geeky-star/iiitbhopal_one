import 'package:flutter/material.dart';

class Semester_Four extends StatefulWidget {
  final Color color;
  Semester_Four({this.color});
  @override
  _Semester_FourState createState() => _Semester_FourState();
}

class _Semester_FourState extends State<Semester_Four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text("Semester Four Notes"),
      ),
    );
  }
}
