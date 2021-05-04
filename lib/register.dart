import 'package:flutter/material.dart';

import 'authentication.dart';
import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  TextEditingController _user = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                child: Center(
                  child: Text("Register",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600)),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  child: TextField(
                    controller: _user,
                    decoration: InputDecoration(
                        hintText: "Name", icon: Icon(Icons.person)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                        hintText: "Email", icon: Icon(Icons.email)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(18),
                child: TextField(
                  controller: _password,
                  decoration: InputDecoration(
                      hintText: "Password", icon: Icon(Icons.lock)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: RaisedButton(
                  color: Colors.black,
                  onPressed: () async {
                    bool shouldNavigate =
                        await register(_email.text, _password.text);
                    if (shouldNavigate != null) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Center(
                child: Text(
                  "Already have an account?",
                ),
              )),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RaisedButton(
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),

          /*Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  controller: _password,
                  decoration: InputDecoration(hintText: "Password"),
                ),
              ),
              RaisedButton(
                child: Text("Register"),
                color: Colors.white,
                onPressed: () async {
                  bool shouldNavigate =
                      await register(_email.text, _password.text);
                  if (shouldNavigate != null) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              )
            ],
          ),
        ),
      ),
      */
        ));
  }
}
