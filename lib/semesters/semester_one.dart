import 'package:flutter/material.dart';

class Semester_One extends StatefulWidget {
  final Color color;
  Semester_One({this.color});

  @override
  _Semester_OneState createState() => _Semester_OneState();
}

class _Semester_OneState extends State<Semester_One> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text("Semester One Notes"),
      ),
    );
  }
}
