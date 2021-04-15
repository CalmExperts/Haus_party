import 'package:flutter/material.dart';
import 'package:haus_party/calendar_page.dart';
import 'package:haus_party/main.dart';
import 'package:haus_party/profile_page.dart';
import 'package:haus_party/updates.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.transparent,
        elevation: 10.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 48.0,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(25.0),
                //     topRight: Radius.circular(25.0)),
                color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.my_location),
                            color: Colors.black,
                            focusColor: Color(0xFF5F54ED),
                            hoverColor: Colors.lightBlueAccent,
                            highlightColor: Color(0xFF5F54ED),
                            splashColor: Color(0xFF5F54ED),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()));
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.date_range),
                            color: Colors.black,
                            focusColor: Color(0xFF5F54ED),
                            hoverColor: Colors.lightBlueAccent,
                            highlightColor: Color(0xFF5F54ED),
                            splashColor: Color(0xFF5F54ED),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CalendarScreen()

                                      //alert()
                                      ));
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.messenger_outline_sharp),
                            color: Colors.black,
                            focusColor: Color(0xFF5F54ED),
                            highlightColor: Color(0xFF5F54ED),
                            hoverColor: Colors.lightBlueAccent,
                            splashColor: Color(0xFF5F54ED),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UpdateScreen()));
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.person_outline_sharp),
                            color: Colors.black,
                            focusColor: Color(0xFF5F54ED),
                            highlightColor: Color(0xFF5F54ED),
                            splashColor: Color(0xFF5F54ED),
                            hoverColor: Colors.lightBlueAccent,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfilePage()));
                            },
                          ),
                        ],
                      ))
                ])));
  }
}
