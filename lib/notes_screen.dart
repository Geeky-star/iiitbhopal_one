import 'package:flutter/material.dart';
import 'package:iiitbhopal_one/semesters/semester_eight.dart';
import 'package:iiitbhopal_one/semesters/semester_five.dart';
import 'package:iiitbhopal_one/semesters/semester_four.dart';
import 'package:iiitbhopal_one/semesters/semester_one.dart';
import 'package:iiitbhopal_one/semesters/semester_seven.dart';
import 'package:iiitbhopal_one/semesters/semester_six.dart';
import 'package:iiitbhopal_one/semesters/semester_two.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Explore"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            child: Center(
                child: Text(
              "Notes, Question Papers, PDFs",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Container(
              height: 200,
              width: 100,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Semester 1",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Semester_One(color: Colors.orange)));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,
              width: 100,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Semester 2",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Semester_two(color: Colors.blue)));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,
              width: 100,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.green[400],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Semester 3",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Semester_two(color: Colors.green[400])));
            },
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Semester_Four(color: Colors.yellow)));
            },
            child: Container(
              height: 200,
              width: 100,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Semester 4",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
          GestureDetector(
            child: Container(
              height: 200,
              width: 100,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Semester 5",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Semester_Five(color: Colors.red[400])));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,
              width: 100,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Semester 6",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Semester_Six(color: Colors.purple)));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,
              width: 100,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Semester 7",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Semester_Seven(color: Colors.pink)));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,
              width: 100,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.green[700],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Semester 8",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Semester_Eight(color: Colors.green[700])));
            },
          )
        ],
      ),
    );
  }
}
