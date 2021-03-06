import 'package:flutter/material.dart';
import 'package:iiitbhopal_two/ViewPdf.dart';
import 'package:iiitbhopal_two/viewAssetPdf.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

class Syllabus extends StatelessWidget {
  List syllbs = [
    "assets/syllabus/IT.pdf",
    "assets/syllabus/Computer_Science.pdf",
    "assets/syllabus/ECE.pdf"
  ];

  List names = ["IT", "Computer Science", "ECE"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Syllabus of IIITBHOPAL"),
        ),
        body: ListView.builder(
          itemCount: syllbs.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewPDFAsset(
                              fileName: syllbs[index],
                            )));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.green[50],
                  child: Center(child: Text(names[index])),
                ),
              ),
            );
          },
        ));
  }
}
