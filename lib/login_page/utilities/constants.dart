import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  // color: Colors.white,
  color: Colors.grey,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  // color: Colors.white,
  color: Colors.red,

  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  // color: Color(0xFF6CA8F1),
  color: Colors.white,
  borderRadius: BorderRadius.circular(25.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
