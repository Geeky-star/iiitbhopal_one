import 'package:flutter/material.dart';
import 'package:iiitbhopal_one/ViewPdf.dart';

class Semester_Six extends StatefulWidget {
  final Color color;
  Semester_Six({this.color});
  @override
  _Semester_SixState createState() => _Semester_SixState();
}

class _Semester_SixState extends State<Semester_Six> {
  List<String> subjects = [
    "ADBMS",
    "Artificial Intelligence",
    "TCP/IP Web and Technologies",
    "IOT",
    "Cryptography and Information Security"
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
          itemCount: subjects.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              title: Text(subjects[index]),
              leading: Icon(Icons.picture_as_pdf),
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
      'subjectName': 'ADBMS',
      'pdfs': [
        "assets/adbms/Transaction.pdf",
        "assets/adbms/Data Storage.pdf",
        "assets/adbms/View Serializability.pdf"
      ]
    },
    {
      'subjectName': 'Cryptography and Information Security',
      'pdfs': [
        'assets/crypto_notes/AES.pdf',
        'assets/crypto_notes/blowfish.pdf',
        'assets/crypto_notes/Cryptography-6.pdf',
        'assets/crypto_notes/Cryptography.pdf',
        'assets/crypto_notes/DES.pdf',
        'assets/crypto_notes/DES2.pdf',
        'assets/crypto_notes/DES3.pdf',
        'assets/crypto_notes/DES4.pdf',
        'assets/crypto_notes/MiniTest.pdf',
        'assets/crypto_notes/modern cryptography.pdf',
        'assets/crypto_notes/modern cryptography2.pdf',
        'assets/crypto_notes/modern cryptography4.pdf',
        'assets/crypto_notes/Public key cryptography.pdf'
      ]
    },
    {
      'subjectName': 'IOT',
      'pdfs': [
        'assets/IOT/IoT.pdf',
        'assets/IOT/IoT_1.pdf',
        'assets/IOT/IoT_2.pdf',
      ]
    },
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
