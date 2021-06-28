import 'package:flutter/material.dart';
import 'package:haus_party/pages/LocalPages/bus_page.dart';
import 'package:haus_party/pages/LocalPages/location_page.dart';
import 'package:haus_party/pages/drinkPage/drink_page.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import '../components/bottom_bar.dart';
import 'drinks_sale.dart';
import '../login_page/widgets/button_editable.dart';

class PartyDetails extends StatelessWidget {
  const PartyDetails({
    this.partyDateTime,
    this.partyTitle,
    this.partyHost,
    this.partyAddress,
  });

  final String? partyAddress;
  final String? partyHost;
  final String? partyTitle;
  final String? partyDateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F54ED),
      appBar: AppBar(
          backgroundColor: Color(0xFF5F54ED),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(partyTitle!,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold))),
      body: ListView(padding: EdgeInsets.fromLTRB(20, 32, 20, 32), children: <
          Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(10, 42, 10, 42),
            // height: 260,
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
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  SizedBox(height: 10),
                  Text('05:00:30',
                      style: TextStyle(
                        color: Color(0xFF5F54ED),
                        fontSize: 42.0,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(height: 10),
                  Text(
                    'hours',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  )
                ])),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 32, 20, 10),
            child: Text(
              'Ticket',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            )),
        // QR Code Container
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.fromLTRB(0, 32, 0, 32),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              QrImage(
                  backgroundColor: Colors.white,
                  data: "Test Data",
                  version: QrVersions.auto,
                  size: 220),
              SizedBox(
                height: 16,
              ),
              Text('Admits 1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )),
            ],
          ),
        ),

        Padding(
            padding: EdgeInsets.fromLTRB(0, 32, 20, 10),
            child: Text(
              'Instructions',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            )),

        //LOCATION CONTAINER
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.location_on,
                      size: 32,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Location",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Text(partyAddress!,
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(85.0),
                    bottomLeft: Radius.circular(85.0),
                  ),
                  child: Image.asset(
                    // "assets/backgroundNewLogisn.png",
                    'assets/mapBack.png',
                    fit: BoxFit.cover,
                    height: 80.0,
                    width: 120.0,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_pin,
                      size: 22,
                      color: Color(0xFF5F54ED),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LocationPage()));
                      },
                      child: Text(
                        'Tap Map for Directions',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
              // FlatButton(
              //   onPressed: () {},
              //   child: Image(image: AssetImage(),),
              //   ),
            ],
          ),
        ),
        SizedBox(
          height: 42,
        ),

        //BUS CONTAINER
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.directions_bus_sharp,
                      size: 32,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Free Bus Ride",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Text('Bus Departs 3PM',
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.7,
                // decoration: BoxDecoration(
                //   color: Colors.green,
                // borderRadius: BorderRadius.only(
                //   topRight: Radius.circular(85.0),
                //   bottomLeft: Radius.circular(85.0),
                // )
                // ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(85.0),
                    bottomLeft: Radius.circular(85.0),
                  ),
                  child: Image.asset(
                    // "assets/backgroundNewLogisn.png",
                    'assets/mapBack.png',
                    fit: BoxFit.cover,
                    height: 80.0,
                    width: 120.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_pin,
                      size: 22,
                      color: Color(0xFF5F54ED),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => BusPage()));
                      },
                      child: Text(
                        'Tap Map for Directions',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )

              // FlatButton(
              //   onPressed: () {},
              //   child: Image(image: AssetImage(),),
              //   ),
            ],
          ),
        ),
        SizedBox(
          height: 42,
        ),
        // Drinks Container

        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(children: <Widget>[
                      Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/drink_image.png'),
                        width: 32,
                        height: 32,
                      ),
                      // Column(
                      //   children: <Widget>[
                      //     Text("Drinks",
                      //         style: TextStyle(
                      //             color: Colors.black, fontSize: 14.0)),
                      //     Text("Admits 1 only",
                      //         style:
                      //             TextStyle(color: Colors.grey, fontSize: 7.5))
                      //   ],
                      // )
                    ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Drinks",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Text('Admits 1 only',
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.grey)),
                          SizedBox(
                            height: 8,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  // height: 120,
                  width: MediaQuery.of(context).size.width * 0.7,
                  // color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 110,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[800]!,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(2.0,
                                      2.0), // shadow direction: bottom right
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/asset-10.png'),
                              ),
                              Text("Ciroc Peach",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10.0)),
                              Text("1",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8.0)),
                            ],
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      ButtonEditable(
                        buttonTitle: 'Order More',
                        theWidth: 100,
                        theHeight: 38,
                        theBorderRadius: 8,
                        sizeText: 16,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DrinkPage()));
                        },
                      ),
                      // RaisedButton(
                      //     // padding: ,
                      //     color: Color(0xFF5F54ED),
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius:
                      //             BorderRadius.all(Radius.circular(10))),
                      //     onPressed: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => DrinkSales()));
                      //     },
                      //     child: Text(
                      //       "Order More",
                      //       style:
                      //           TextStyle(color: Colors.white, fontSize: 10.0),
                      //     )),
                    ],
                  ))
              // FlatButton(
              //   onPressed: () {},
              //   child: Image(image: AssetImage(),),
              //   ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomBar(),
    );
  }
}
