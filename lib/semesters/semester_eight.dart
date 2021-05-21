import 'package:flutter/material.dart';
import 'package:iiitbhopal_two/ViewPdf.dart';

class Semester_Eight extends StatefulWidget {
  final Color color;
  Semester_Eight({this.color});

  @override
  _Semester_EightState createState() => _Semester_EightState();
}

class _Semester_EightState extends State<Semester_Eight> {
  @override
  List<String> subjects = [
    "Satellite Communication",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text("Semester Eight Notes"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: subjects.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              title: Text(subjects[index]),
              //leading: Icon(Icons.picture_as_pdf),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PDFTiles(
                              subjectName: subjects[index],
                              color: widget.color,
                            )));
              },
            ));
          },
        ),
      ),
    );
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
  List subjectPDFs = [
    {
      'subjectName': 'Artificial Intelligence',
      'pdfs': ["assets/AI/AI_1.pdf", "assets/AI/AI_2.pdf"]
    }
  ];

  List requiredPDFs = new List();
  void getPDF() {
    print("subjects length is : ");
    print(subjectPDFs.length);

    for (int i = 0; i < subjectPDFs.length; i++) {
      if (subjectPDFs[i]['subjectName'] == widget.subjectName) {
        print(subjectPDFs[i]['subjectName']);
        for (int j = 0; j < subjectPDFs[i]['pdfs'].length; j++) {
          requiredPDFs.add(subjectPDFs[i]['pdfs'][j]);
        }
      }
    }
    print("pdfs are ");
    print(requiredPDFs);
  }

  @override
  void initState() {
    super.initState();
    getPDF();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.subjectName),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: requiredPDFs.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              title: Text(requiredPDFs[index]),
              leading: Icon(Icons.picture_as_pdf),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ViewPDF(fileName: requiredPDFs[index])));
              },
            ));
          },
        ),
      ),
    );
  }
}
