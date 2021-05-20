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
        .doc("semesterFirst")
        .collection("IT")
        .snapshots());

    return FirebaseFirestore.instance
        .collection("Notes")
        .doc("semesterFirst")
        .collection("IT")
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
                          .doc("semesterFirst")
                          .collection("IT")
                          .snapshots(),

                      //db.collection("Data").snapshots(),
                      builder: (context, snapshot) {
                        print("snapshot data");

                        print(snapshot);

                        print(snapshot.data.docs[1]['subject']);

                        print(db
                            .collection("Notes")
                            .doc("semesterFirst")
                            .collection("IT")
                            .snapshots());

                        if (!snapshot.hasData) {
                          return Text("No notes available");
                        }
                        if (snapshot.hasData) {
                          return Column(
                            children: [
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.docs.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(
                                          snapshot.data.docs[index]['subject']),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => SubjectPDFs(
                                                document:
                                                    snapshot.data.docs[index],
                                                length: snapshot.data
                                                    .docs[index]['url'].length,
                                                subjectName: snapshot.data
                                                    .docs[index]['subject'],
                                              ),
                                            ));
                                      },
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
