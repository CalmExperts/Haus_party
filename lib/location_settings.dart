import 'dart:ffi';

import 'package:flutter/material.dart';

String dropdownvalue = 'Toronto';

class LocationSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F54ED),
      body: Column(
        // padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.close, color: Colors.black),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.0, style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.08,
                        padding: EdgeInsets.only(left: 10.0),
                        child: DropdownButton<String>(
                          // icon: Icon(Icons.arrow_drop_down),
                          isExpanded: true,
                          value: dropdownvalue,
                          elevation: 20,
                          hint: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("City"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                          onChanged: (String value) {
                            return value;
                          },
                          items: <String>[
                            'Vancouver',
                            'Toronto',
                            'Montreal',
                            'Ottawa'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.all(
                                    new Radius.circular(10.0))),
                            color: Color(0xFFFFFFFF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("From"),
                                Icon(Icons.date_range)
                              ],
                            ),
                            onPressed: () {
                              showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2010),
                                  lastDate: DateTime(2050));
                            },
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.all(
                                    new Radius.circular(10.0))),
                            color: Color(0xFFFFFFFF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("To"),
                                Icon(
                                  Icons.date_range,
                                  color: Color(0xFF000000),
                                )
                              ],
                            ),
                            onPressed: () {
                              showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2010),
                                  lastDate: DateTime(2050));
                            },
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2),
                      Center(
                        child: RaisedButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(10.0))),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: Color(0xFFFFFFFF),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              color: Color(0xFF5F54ED),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
