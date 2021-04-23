import 'dart:ffi';

import 'package:flutter/material.dart';

class Slide {
  final String title;
  final String description;
  final int id;

  Slide({
    @required this.title,
    @required this.description,
    @required this.id,
  });
}

final slideList = [
  Slide(
    title: 'Find Parties Near You!',
    id: 1,
    description:
        'kogi venmo pabst man bu. Snackware fam bruch tacos mustache jianbroni occupy mechingg.',
  ),
  Slide(
    title: 'Reserve your Spot!',
    id: 2,
    description:
        'kogi venmo pabst man bu. Snackware fam bruch tacos mustache jianbroni occupy mechingg.',
  ),
];
