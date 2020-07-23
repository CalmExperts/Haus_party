import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class PartyDetails extends StatelessWidget {
  const PartyDetails({
    this.partyDateTime,
    this.partyTitle,
    this.partyHost,
    this.partyAddress,
  });

  final String partyAddress;
  final String partyHost;
  final String partyTitle;
  final String partyDateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F54ED),
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {}),
          title: Text(partyTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold))),
      body: ListView(padding: EdgeInsets.fromLTRB(20, 0, 20, 0), children: <
          Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "The Party Starts in",
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '05:00:30',
                    style: TextStyle(color: Color(0xFF5F54ED), fontSize: 25.0),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'hours',
                    style: TextStyle(color: Colors.black, fontSize: 10.0),
                  )
                ])),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
            child: Text(
              'Ticket',
              style: TextStyle(color: Colors.white),
            )),
        // QR Code Container
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            // child: ,
          ),
        ),
        Text(
              'Instructions',
              style: TextStyle(color: Colors.white),
            ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child:
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          // child: ,
        ),
        ),
        // Drinks Container
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child:
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(children: <Widget>[
            Row(children: <Widget>[
              Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/drink_image.png'),
              ),
              Column(
                children: <Widget>[
                  Text("Drinks",
                      style: TextStyle(color: Colors.black, fontSize: 14.0)),
                  Text("Admits 1 only",
                      style: TextStyle(color: Colors.grey, fontSize: 7.5))
                ],
              )
            ]),
            SizedBox(height: 30.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 110,
                    width: 120,
                    child: Column(
                      children: <Widget>[
                        Image(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/asset-10.png'),
                        ),
                        Text("Ciroc Peach",
                            style:
                                TextStyle(color: Colors.black, fontSize: 10.0)),
                        Text("1",
                            style:
                                TextStyle(color: Colors.black, fontSize: 8.0)),
                      ],
                    )),
                RaisedButton(
                    // padding: ,
                    color: Color(0xFF5F54ED),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    onPressed: () {},
                    child: Text(
                      "Order More",
                      style: TextStyle(color: Colors.white, fontSize: 10.0),
                    )),
              ],
            )
          ]),
        ),
        ),
      ]),
      bottomNavigationBar: BottomBar(),
    );
  }
}
