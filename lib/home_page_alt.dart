import 'package:flutter/material.dart';

import 'bottom_bar.dart';
import 'home_cards.dart';

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
      body: Container(
          color: Colors.grey[300],
          child: CustomScrollView(slivers: <Widget>[
            const SliverAppBar(
              pinned: true,
              expandedHeight: 0.0,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Upcoming Parties',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Varela',
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            // SizedBox(height: 15.0),
            SliverFixedExtentList(
              itemExtent: MediaQuery.of(context).size.height / 2,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      height: MediaQuery.of(context).size.height / 2,
                      child: CardItem());
                },
                childCount: 3,
              ),
            ),
          ])),
      bottomNavigationBar: BottomBar(),
    );
  }
}
