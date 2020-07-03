import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0)
          ),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.my_location, color: Color(0xFF707070)),
                  Icon(Icons.date_range, color: Color(0xFF707070)),
                  Icon(Icons.notifications, color: Color(0xFF707070)),
                  Icon(Icons.person, color: Color(0xFF707070)),


                ],
              )
            )
          ]
        )
      )
    );
  }
}