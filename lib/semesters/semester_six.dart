import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_plugin.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';

class Semester_Six extends StatefulWidget {
  final Color color;
  Semester_Six({this.color});
  @override
  _Semester_SixState createState() => _Semester_SixState();
}

class _Semester_SixState extends State<Semester_Six> {
  List<String> files = [
    "assets/adbms/Transaction.pdf",
    "assets/adbms/Data Storage.pdf",
    "assets/adbms/View Serializability.pdf"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text("Semester Six Notes"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: files.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              title: Text(files[index]),
              leading: Icon(Icons.picture_as_pdf),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewPDF(fileName: files[index])));
              },
            ));
          },
        ),
      ),
    );
  }
}

class ViewPDF extends StatelessWidget {
  final String fileName;
  String pathPDF = "";
  ViewPDF({this.pathPDF, this.fileName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fileName),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        child: PDF.asset(fileName),
      ),
    );
  }
}
