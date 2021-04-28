import 'package:flutter/material.dart';

class Category {
  final String id;
  final String price;
  final String image;
  final String name;

  const Category(
      {@required this.id,
      @required this.price,
      @required this.image,
      @required this.name});
}
