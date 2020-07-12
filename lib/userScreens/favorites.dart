import 'package:flutter/material.dart';

class UserFavorites extends StatefulWidget {
  @override
  _UserFavoritesState createState() => _UserFavoritesState();
}

class _UserFavoritesState extends State<UserFavorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Favorites"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Favorites",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
