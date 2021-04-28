import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          icon: Icon(
            Icons.location_on_outlined,
            color: Color(0xFF5F54ED),
            size: 38,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Discover',
          // style: TextStyle(color: Color(0xFF545D68), fontSize: 20.0),
          style: GoogleFonts.sofia(
              fontWeight: FontWeight.normal,
              textStyle: TextStyle(color: Color(0xFF545D68), fontSize: 26.0)),
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
                title: Text('Upcoming Parties2',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        letterSpacing: 1.5,
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
                      padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
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
