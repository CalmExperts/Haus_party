import 'package:flutter/material.dart';

class ProfileSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFF5F54ED),
        body: Column(children: <Widget>[
          SizedBox(height: size.height * 0.1),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.close,),
                      color: Colors.white,
                      iconSize: 25,
                      onPressed: () {
                        Navigator.pop(context);
                      }
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: FlatButton(
                      onPressed: () {},
                      child: Text("Logout",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              decoration: TextDecoration.underline))),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: FlatButton(
                      onPressed: () {},
                      child: Text("About",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              decoration: TextDecoration.underline))),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: FlatButton(
                      onPressed: () {},
                      child: Text("Feedback",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              decoration: TextDecoration.underline))),
                ),
                SizedBox(height: size.height * 0.1),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                          onPressed: () {},
                          child: Text("Terms of Service",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  decoration: TextDecoration.underline))),
                      // Spacer(),
                      FlatButton(
                        onPressed: () {},
                        child: Text("and",
                            style: TextStyle(color: Colors.white, fontSize: 8)),
                      ),
                      // Spacer(),
                      FlatButton(
                        onPressed: () {},
                        child: Text("Privacy Policy",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                decoration: TextDecoration.underline)),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[],
                    ))
              ],
            ),
          )
        ]));
  }
}
