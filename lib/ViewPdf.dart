import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

class ViewPDF extends StatelessWidget {
  final String fileName;
  ViewPDF({this.fileName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fileName),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        child: PDF.network(fileName),
      ),
    );
  }
}
