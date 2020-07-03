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
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        // SizedBox(height: 15.0),
        SliverFixedExtentList(
          itemExtent: MediaQuery.of(context).size.height / 2,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                  // height: MediaQuery.of(context).size.height,
                  child: Card(
                color: Color(0xFF5F54ED),
                elevation: 100.0,
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                shape: new RoundedRectangleBorder(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(10.0))),
                child: Container(
                  // width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/party_1.png'), fit: BoxFit.cover)))),
                        SizedBox(height: 15.0),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 30.0),
                            Icon(Icons.calendar_today, size: 80.0),
                            SizedBox(width: 20.0),
                            Column(children: <Widget>[
                              Text('Spring Welcome Party',
                                  style: TextStyle(
                                      fontSize: 21.0,
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
                            ]),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Row(children: <Widget>[
                          SizedBox(width: 25.0),
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
                          SizedBox(width: 20.0),
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
                          SizedBox(width: 90.0),
                          RaisedButton(
                              onPressed: null,
                              elevation: 20.0,
                              color: Colors.white,
                              disabledColor: Colors.white,
                              hoverElevation: 40.0,
                              child: Text('View',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      color: Color(0xFF5F54ED)))),
                        ]),
                        SizedBox(height: 15.0),
                      ]),
                ),
              ));
            },
            childCount: 3,
          ),
        ),
      ]),
      bottomNavigationBar: BottomBar(),
    );
  }
}
