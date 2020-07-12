import 'package:flutter/material.dart';

class UserDelivery extends StatefulWidget {
  @override
  _UserDeliveryState createState() => _UserDeliveryState();
}

class _UserDeliveryState extends State<UserDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Delivery Adress"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Delivery Adress",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
