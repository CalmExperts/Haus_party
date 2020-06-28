import 'package:flutter/material.dart';

Widget partyCard(BuildContext context) {
  return Container(
      height: MediaQuery.of(context).size.height/3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int i) => Card(
            color: Colors.blue,
            shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.all(new Radius.circular(20.0))),
            child: Container(
                width: MediaQuery.of(context).size.width/1.5,
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
