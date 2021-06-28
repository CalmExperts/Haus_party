import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haus_party/pages/page_description.dart';

class HorizontalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 2),
      height: 175,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        itemExtent: MediaQuery.of(context).size.width,
        itemBuilder: (BuildContext context, int i) => HorizontalCardItem(),
      ),
    );
  }
}

class HorizontalCardItem extends StatelessWidget {
  const HorizontalCardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 08, 0),
      child: Card(
        // color: Colors.red,
        color: Color(0xFF5F54ED),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(children: <Widget>[
          Container(
            // height: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),

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
          Container(child: Content())
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: 8.0),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Image.asset(
                  "assets/asset-1.png",
                  // categoryItem.image,

                  fit: BoxFit.cover,
                  height: 120.0,
                  width: 120.0,
                ),
              ),
              SizedBox(width: 16.0),
              Column(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                      height: 59.0,
                      width: 65.0,
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
                        SizedBox(width: 16.0),
                      ])),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                ],
              ),
              SizedBox(
                width: 32,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                              textStyle: TextStyle(
                                  fontSize: 12.0, color: Colors.white),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 3.0),
                          Text(
                            '306 Richmond Druve',
                            style: GoogleFonts.sofia(
                                textStyle: TextStyle(
                                    fontSize: 10.0, color: Colors.white)),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Time',
                            style:
                                TextStyle(fontSize: 10.0, color: Colors.white),
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
                  ]),
              SizedBox(width: 8.0),
              Container(
                  width: 105,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PartyDesc()));
                    },
                    child: Text(
                      'View',
                      style: TextStyle(
                        fontSize: 22,
                        backgroundColor: Colors.white,
                        color: Color(0xFF5F54ED),
                      ),
                    ),
                  )),
              SizedBox(width: 8.0),
            ],
          ),

          // SizedBox(height: 16.0),
          // Row(children: <Widget>[
          //   SizedBox(width: 8.0),
          //   Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Text('People Attending',
          //           style: TextStyle(fontSize: 10.0, color: Colors.white),
          //           textAlign: TextAlign.left),
          //       SizedBox(
          //         height: 5.0,
          //       ),
          //       Text('129',
          //           style: TextStyle(
          //               fontSize: 18.0,
          //               color: Colors.white,
          //               fontWeight: FontWeight.bold),
          //           textAlign: TextAlign.left),
          //     ],
          //   ),
          //   SizedBox(width: 16.0),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     Text('Time',
          //         style: TextStyle(fontSize: 10.0, color: Colors.white),
          //         textAlign: TextAlign.left),
          //     SizedBox(
          //       height: 5.0,
          //     ),
          //     Text('5-7PM',
          //         style: TextStyle(
          //             fontSize: 20.0,
          //             color: Colors.white,
          //             fontWeight: FontWeight.bold),
          //         textAlign: TextAlign.left),
          //   ],
          // ),

          //   SizedBox(width: 16.0),
          // ]),

          // SizedBox(height: 4.0),
        ],
      ),
    );
  }
}
