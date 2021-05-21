import 'package:flutter/material.dart';
import 'package:iiitbhopal_two/mainpage.dart';
import 'package:iiitbhopal_two/register.dart';

import 'authentication.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class AnimatedTextExample {
  final String label;
  final Color color;
  final Widget child;
  const AnimatedTextExample({
    @required this.label,
    @required this.color,
    @required this.child,
  });
}

class _LoginState extends State<Login> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  bool loading = false;

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  loadingIndicator() {
    return CircularProgressIndicator();
  }

  void _showScaffold(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 100,
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  //  style: Textstyle.normalheading,
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 15,
              right: 6,
              child: TextField(
                controller: _email,
                decoration:
                    InputDecoration(hintText: "Email", icon: Icon(Icons.email)),
              ),
            ),
            Positioned(
              top: 320,
              left: 15,
              right: 6,
              child: TextField(
                controller: _password,
                decoration: InputDecoration(
                    hintText: "Password", icon: Icon(Icons.lock)),
              ),
            ),
            Positioned(
              top: 400,
              left: 160,
              child: RaisedButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await signIn(_email.text, _password.text);
                  loading = true;
                  if (shouldNavigate) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainPage(),
                        ));
                  } else {
                    return CircularProgressIndicator();
                  }
                },
                color: Colors.black,
                child: loading == true
                    ? CircularProgressIndicator()
                    : Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
              ),
            ),
            Positioned(
                top: 480,
                left: 150,
                child: Text(
                  "Don't have account?",
                  //  style: Textstyle.normalheading,
                )),
            Positioned(
              top: 500,
              left: 160,
              child: RaisedButton(
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
