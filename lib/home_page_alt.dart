import 'package:flutter/material.dart';
import 'package:haus_party/main.dart';

import 'bottom_bar.dart';

class AltHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.location_on, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Discover',
          style: TextStyle(color: Color(0xFF545D68), fontSize: 20.0),
        ),
      ),
      body: CustomScrollView(slivers: <Widget>[
        const SliverAppBar(
          pinned: true,
          expandedHeight: 30.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Upcoming Parties',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(height: 15.0),
        SliverFixedExtentList(
            itemExtent: 100.0,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Card(
                color: Colors.blue,
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 50.0),
                shape: new RoundedRectangleBorder(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(20.0))),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 2,
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
                  ),
                ),
              );
            },
            childCount: 5,
            ),
            ),
      ]),
      bottomNavigationBar: BottomBar(),
    );
  }
}
