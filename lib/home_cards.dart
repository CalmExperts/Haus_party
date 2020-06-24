import 'package:flutter/material.dart';

Widget partyCard() {
  return Container(
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int i) => Card(
            color: Colors.blue,
            child: Container(
                width: 150.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.calendar_today, size: 30.0),
                    Text('Spring Welcome Party',
                        style: TextStyle(fontSize: 20.0)),
                    Text('Hosted by DJ Clint',
                        style: TextStyle(fontSize: 10.0)),
                    Text('306 Richmond Druve',
                        style: TextStyle(fontSize: 10.0)),
                  ],
                ),),),
      ));
}
