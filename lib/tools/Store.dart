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
