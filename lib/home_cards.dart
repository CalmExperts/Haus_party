import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haus_party/page_description.dart';

class PartyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        itemExtent: MediaQuery.of(context).size.height * 0.533,
        itemBuilder: (BuildContext context, int i) => CardItem(),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 30, 16, 4),
      child: Card(
        // color: Colors.red,
        color: Color(0xFF5F54ED),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(children: <Widget>[
          Flexible(
            child: Container(
              // height: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),

                //

                // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                //
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/profile_image.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(child: Content())
        ]),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 8.0),
          Row(
            children: <Widget>[
              SizedBox(width: 8.0),
              Container(
                  padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                  height: 59.0,
                  width: 59.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(children: <Widget>[
                    Text('Dec',
                        style: TextStyle(
                            color: Color(0xFF5F54ED),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300)),
                    Text('30',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w600)),
                  ])),
              SizedBox(width: 16.0),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Spring Welcome Party',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        textAlign: TextAlign.left),
                    SizedBox(height: 3.0),
                    Text(
                      'Hosted by DJ Clint',
                      style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(fontSize: 12.0, color: Colors.white),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      '306 Richmond Druve',
                      style: GoogleFonts.sofia(
                          textStyle:
                              TextStyle(fontSize: 10.0, color: Colors.white)),
                      textAlign: TextAlign.left,
                    ),
                  ]),
            ],
          ),
          SizedBox(height: 16.0),
          Row(children: <Widget>[
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('People Attending',
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 5.0,
                ),
                Text('129',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left),
              ],
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Time',
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 5.0,
                ),
                Text('5-7PM',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left),
              ],
            ),
            Spacer(),
            Container(
              width: 65,
              height: 30,
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PartyDesc()));
                  },
                  color: Colors.white,
                  disabledColor: Colors.white,
                  child: Text('View',
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xFF5F54ED)))),
            ),
            SizedBox(width: 16.0),
          ]),
          SizedBox(height: 4.0),
        ],
      ),
    );
  }
}
