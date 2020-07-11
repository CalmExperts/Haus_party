import 'package:flutter/material.dart';

Widget partyCard(BuildContext context) {
  return Container(
      height: MediaQuery.of(context).size.height / 2.9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemExtent: MediaQuery.of(context).size.height / 2,
        itemBuilder: (BuildContext context, int i) => Card(
          color: Color(0xFF5F54ED),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.all(new Radius.circular(20.0))),
          child: Container(
            // height: MediaQuery.of(context).size.height/2.0,
            child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/party_1.png'), fit: BoxFit.cover)))),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 5.0),
                            Icon(Icons.calendar_today, size: 80.0),
                            SizedBox(width: 10.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                              Text('Spring Welcome Party',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 3.0),
                              Text(
                                'Hosted by DJ Clint',
                                style: TextStyle(
                                    fontSize: 10.0, color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 3.0),
                              Text(
                                '306 Richmond Druve',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ]), ,88
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Row(children: <Widget>[
                          SizedBox(width: 15.0),
                          Column(children: <Widget>[
                            Text('People Attending',
                                style: TextStyle(
                                    fontSize: 11.0, color: Colors.white),
                                textAlign: TextAlign.left),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('129',
                                style: TextStyle(
                                    fontSize: 21.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left),
                          ]),
                          SizedBox(width: 10.0),
                          Column(children: <Widget>[
                            Text('Time',
                                style: TextStyle(
                                    fontSize: 11.0, color: Colors.white),
                                textAlign: TextAlign.left),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('5-7PM',
                                style: TextStyle(
                                    fontSize: 21.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left),
                          ]),
                          SizedBox(width: 50.0),
                          RaisedButton(
                              onPressed: null,
                              elevation: 0.0,
                              color: Colors.white,
                              disabledColor: Colors.white,
                              hoverElevation: 20.0,
                              child: Text('View',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      color: Color(0xFF5F54ED)))),
                        ]),
                        SizedBox(height: 15.0),
                      ]),
          ),
        ),
      ));
}
