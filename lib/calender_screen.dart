import 'package:flutter/material.dart';
import 'package:iiitbhopal_one/ViewPdf.dart';

class Calender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ViewPDF(
        fileName: "assets/ac/AC-2020-2021.pdf",
      ),
    );
  }
}
