import 'package:flutter/material.dart';

class Semester_Seven extends StatefulWidget {
  final Color color;
  Semester_Seven({this.color});
  @override
  _Semester_SevenState createState() => _Semester_SevenState();
}

class _Semester_SevenState extends State<Semester_Seven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text("Semester Seven Notes"),
      ),
    );
  }
}
