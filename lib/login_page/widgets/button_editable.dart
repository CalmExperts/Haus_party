import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:haus_party/login_page/terms_page.dart';

class ButtonEditable extends StatelessWidget {
  final String buttonTitle;
  final Function onPressed;
  final double theHeight;
  final double theWidth;
  final double theBorderRadius;
  final double sizeText;

  const ButtonEditable({
    Key key,
    this.buttonTitle,
    this.onPressed,
    this.theHeight,
    this.theWidth,
    this.theBorderRadius,
    this.sizeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: theWidth,
        height: theHeight,
        decoration: BoxDecoration(
            color: Color(0xFF5F54ED),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[800],
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(theBorderRadius))),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontSize: sizeText,
              // backgroundColor: Colors.white,
              color: Colors.white,
            ),
          ),
        ));
  }
}
