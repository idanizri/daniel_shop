import 'package:flutter/material.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Login",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
