import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;

  CategoryItem(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      // color: Colors.red,
      padding: const EdgeInsets.all(15),
      child: Text(title),
    );
  }
}
