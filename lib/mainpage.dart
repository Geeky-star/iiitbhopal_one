import 'package:flutter/material.dart';
import 'package:iiitbhopal_one/notes_screen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 200,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  padding: EdgeInsets.all(12),
                  physics: ClampingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotesScreen()));
                          },
                          child: Container(
                            height: 180,
                            width: 180,
                            child: Image.asset("assets/images/notes.jpg"),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2.0,
                                      color: Colors.grey[100])
                                ]),
                          ),
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          child: Image.asset("assets/images/setting_img.jpg"),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2.0, color: Colors.grey[100])
                              ]),
                        )
                      ],
                    ),

                    //second row

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotesScreen()));
                          },
                          child: Container(
                            height: 180,
                            width: 180,
                            child: Image.asset("assets/images/user.jpg"),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2.0,
                                      color: Colors.grey[100])
                                ]),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotesScreen()));
                          },
                          child: Container(
                            height: 180,
                            width: 180,
                            child: Image.asset(
                              "assets/images/box.jpg",
                              height: 40,
                              width: 40,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2.0,
                                      color: Colors.grey[100])
                                ]),
                          ),
                        ),
                      ],
                    ),

                    //third row
/*
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          child: Text("work"),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2.0, color: Colors.grey[100])
                              ]),
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          child: Text("work"),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2.0, color: Colors.grey[100])
                              ]),
                        )
                      ],
                    )

                    */
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
