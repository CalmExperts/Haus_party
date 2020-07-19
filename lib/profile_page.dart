import 'package:flutter/material.dart';
import 'package:haus_party/privacy_settings.dart';

import 'bottom_bar.dart';
import 'notif_settings.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F54ED),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            
            child: Column(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                padding: EdgeInsets.only(left: 20.0, top: 25.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Your Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                      iconSize: 20.0,
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/profile_image.jpg'),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Text(
                      "Damola Adewunmi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "talk2mm@yahoo.com",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only( topLeft:Radius.circular(20.0), topRight:Radius.circular(20.0)),
              color: Colors.white,
            ),
            height: MediaQuery.of(context).size.height * 0.515,
            // padding: EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 5,
                    indent: 80,
                    endIndent: 80,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "General",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: RaisedButton(
                        color: Color(0xFF5F54ED),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(5.0))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Payment",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Visa card **** **** **** 8909",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: RaisedButton(
                        color: Color(0xFF5F54ED),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(5.0))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Subscriptions",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: RaisedButton(
                        color: Color(0xFF5F54ED),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(5.0))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NotifSettings()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Notifications",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: RaisedButton(
                        color: Color(0xFF5F54ED),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(5.0))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacySettings()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Privacy",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
