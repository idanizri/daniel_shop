import 'package:daniel_shop/tools/Store.dart';
import 'package:daniel_shop/userScreens/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'favorites.dart';
import 'messages.dart';
import 'cart.dart';
import 'notifications.dart';
import 'history.dart';
import 'profile.dart';
import 'delivery.dart';
import 'aboutUs.dart';
import 'loginLogout.dart';
import '../tools/Store.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Shop Name"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) {
                    return new UserFavorites();
                  }),
                );
              }),
          new Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              new IconButton(
                  icon: new Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      new CupertinoPageRoute(builder: (BuildContext context) {
                        return new UserMessages();
                      }),
                    );
                  }),
              new CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.red,
                child: new Text("0",
                    style: new TextStyle(color: Colors.white, fontSize: 12.0)),
              )
            ],
          )
        ],
      ),
      body: new Center(
          child: new Column(
        children: <Widget>[
          new Flexible(
            child: new GridView.builder(
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: storeItems.length,
              itemBuilder: (BuildContext context, int index) {
                return new Card(
                  child: new Stack(
                    alignment: FractionalOffset.bottomCenter,
                    children: <Widget>[
                      new Container(
                          child:
                              new Image.network(storeItems[index].itemImage)),
                      new Container(
                        height: 30.0,
                        color: Colors.black.withAlpha(100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Text(
                                storeItems[index].itemName.substring(0, 8) +
                                    "...",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.0,
                                    color: Colors.white),
                              ),
                              new Text(
                                "${storeItems[index].itemPrice} Nis",
                                style: new TextStyle(
                                    color: Colors.red[500],
                                    fontWeight: FontWeight.w700),
                              ),
                              //new Text("${storeItems[index].itemRating}"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      )),
      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                new CupertinoPageRoute(builder: (BuildContext context) {
                  return new UserCart();
                }),
              );
            },
            child: new Icon(Icons.shopping_cart),
          ),
          new CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: new Text("0",
                style: new TextStyle(color: Colors.white, fontSize: 12.0)),
          )
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Daniel Gozlan"),
              accountEmail: new Text("DanielGozlan@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Icon(Icons.person),
              ),
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              title: new Text("Order Notifications"),
              onTap: () {
                Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) {
                    return new UserNotifications();
                  }),
                );
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.history,
                  color: Colors.white,
                ),
              ),
              title: new Text("Order History"),
              onTap: () {
                Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) {
                    return new UserHistory();
                  }),
                );
              },
            ),
            new Divider(),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              title: new Text("Profile Settings"),
              onTap: () {
                Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) {
                    return new UserProfile();
                  }),
                );
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              title: new Text("Delivery Adress"),
              onTap: () {
                Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) {
                    return new UserDelivery();
                  }),
                );
              },
            ),
            new Divider(),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                  Icons.help,
                  color: Colors.white,
                ),
              ),
              title: new Text("About Us"),
              onTap: () {
                Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) {
                    return new AboutUs();
                  }),
                );
              },
            ),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
              ),
              title: new Text("Login"),
              onTap: () {
                Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) {
                    return new UserLogin();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
