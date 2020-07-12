import 'package:flutter/material.dart';

class Store {
  String itemName;
  double itemPrice;
  String itemImage;
  double itemRating;

  Store.items({this.itemName, this.itemPrice, this.itemImage, this.itemRating});
}

List<Store> storeItems = [
  Store.items(
    itemName: "Pink Can",
    itemPrice: 2500.00,
    itemImage: "",
    itemRating: 0.0,
  ),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.99,
      itemImage:
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
      itemRating: 0.0),
  Store.items(
      itemName: "Back off shoulder",
      itemPrice: 750.00,
      itemImage: "https://images.app.goo.gl/cXCKEF4WJ4MsVuQj6",
      itemRating: 0.0),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.99,
      itemImage: "https://images.app.goo.gl/QeuzCn2yRsC1wcBD8",
      itemRating: 0.0),
  Store.items(
    itemName: "Pink Can",
    itemPrice: 2500.00,
    itemImage: "",
    itemRating: 0.0,
  ),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.99,
      itemImage: "",
      itemRating: 0.0),
  Store.items(
      itemName: "Back off shoulder",
      itemPrice: 750.00,
      itemImage: "",
      itemRating: 0.0),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.99,
      itemImage: "",
      itemRating: 0.0),
  Store.items(
    itemName: "Pink Can",
    itemPrice: 2500.00,
    itemImage: "",
    itemRating: 0.0,
  ),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.99,
      itemImage: "",
      itemRating: 0.0),
  Store.items(
      itemName: "Back off shoulder",
      itemPrice: 750.00,
      itemImage: "",
      itemRating: 0.0),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.99,
      itemImage: "",
      itemRating: 0.0),
];
