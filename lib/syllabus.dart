import 'package:flutter/material.dart';
import 'package:iiitbhopal_one/ViewPdf.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

class Syllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ViewPDF(fileName: "assets/syllabus/SYLLABUSIT.pdf"));
  }
}
