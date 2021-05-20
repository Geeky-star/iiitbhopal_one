import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

class Calender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //  title: Text(fileName),
      //backgroundColor: Colors.deepOrangeAccent,
      //),
      body: Container(
        child: PDF.asset("assets/ac-2020.pdf"),
      ),
    );
  }
}
