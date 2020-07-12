import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Profile"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Profile",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
