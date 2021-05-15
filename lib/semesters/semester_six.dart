import 'package:flutter/material.dart';
import 'package:iiitbhopal_one/ViewPdf.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

class Semester_Six extends StatefulWidget {
  final Color color;
  Semester_Six({this.color});
  @override
  _Semester_SixState createState() => _Semester_SixState();
}

class _Semester_SixState extends State<Semester_Six> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PDFTiles(subjectName: "Subjects", color: Colors.blue));
  }
}

class PDFTiles extends StatefulWidget {
  final subjectName;
  final Color color;
  PDFTiles({this.subjectName, this.color});
  @override
  _PDFTilesState createState() => _PDFTilesState();
}

class _PDFTilesState extends State<PDFTiles> {
  final db = FirebaseFirestore.instance;
  findData() {
    print("data is - ");
    print(FirebaseFirestore.instance
        .collection("Notes")
        .doc()
        .collection("IT")
        .doc()
        .snapshots());

    return FirebaseFirestore.instance
        .collection("Notes")
        .doc()
        .collection("IT")
        .doc()
        .snapshots();
  }

  List requiredPDFs = new List();

  @override
  void initState() {
    super.initState();
    findData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.subjectName),
      ),
      body: findData().length == null
          ? Text("No notes available")
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    StreamBuilder(
                      stream: db
                          .collection("Notes")
                          .doc('semseterFirst')
                          .collection('IT')
                          .snapshots(),
                      builder: (context, snapshot) {
                        print("snapshot data");
                        print(snapshot.data.docs);
//                        print(snapshot.data.docs[0]['url'][0]);
                        if (!snapshot.hasData) {
                          return Text("No notes available");
                        }
                        if (snapshot.hasData) {
                          return Column(
                            children: [
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 1,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => SubjectPDFs(
                                                document: snapshot.data[index],
                                                length: snapshot
                                                    .data[index]['url'].length,
                                                subjectName: snapshot
                                                    .data[index]['subject'],
                                              ),
                                            ));
                                      },
                                      child:
                                          Text(snapshot.data[index]['subject']),
                                    );
                                  }),
                            ],
                          );
                        }
                        return Text("Cart is Empty");
                      },
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildListItem(
      BuildContext context, DocumentSnapshot document, int length) {
    return ListTile();
  }
}

class SubjectPDFs extends StatefulWidget {
  DocumentSnapshot document;
  int length;
  String subjectName;

  SubjectPDFs({this.document, this.length, this.subjectName});
  @override
  _SubjectPDFsState createState() => _SubjectPDFsState();
}

class _SubjectPDFsState extends State<SubjectPDFs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.subjectName),
        ),
        body: ListView.builder(
          itemCount: widget.length,
          itemBuilder: (context, idx) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewPDF(
                              fileName: widget.document['url'][idx],
                            )));
              },
              title: Text(widget.document['url'][idx]),
              leading: Icon(Icons.picture_as_pdf),
            );
          },
        ));
  }
}
