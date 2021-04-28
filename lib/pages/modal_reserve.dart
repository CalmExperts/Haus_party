import 'package:flutter/material.dart';
import 'package:haus_party/pages/drinkPage/drink_page.dart';

class ModalReserve extends StatefulWidget {
  @override
  _ModalReserveState createState() => _ModalReserveState();
}

class _ModalReserveState extends State<ModalReserve> {
  Widget _body() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 60),
            child: Stack(
              children: [
                Container(
                  color: Colors.transparent,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.transparent,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 140,
                        margin: EdgeInsets.fromLTRB(32, 16, 32, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          child: Image.asset(
                            // "assets/backgroundNewLogisn.png",
                            'assets/asset-1.png',

                            fit: BoxFit.fill,
                            // height: 1000.0,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                        ),
                        margin: EdgeInsets.fromLTRB(32, 0, 32, 0),
                        height: 375,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              2, 2, 2, 2),
                                          height: 59.0,
                                          width: 59.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                offset:
                                                    Offset(0.0, 1.0), //(x,y)
                                                blurRadius: 6.0,
                                              ),
                                            ],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                          ),
                                          child: Column(children: <Widget>[
                                            Text('Jan',
                                                style: TextStyle(
                                                    color: Color(0xFF5F54ED),
                                                    fontSize: 18.0,
                                                    fontWeight:
                                                        FontWeight.w300)),
                                            Text('22',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 26.0,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ]))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Spring Welcome Party',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w700)),
                                      Text('Host - Dj Clinton',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0,
                                          )),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text('306 Richamond Drive',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w700)),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text('People Attending',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0,
                                          )),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text('129',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w700)),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Time',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0,
                                          )),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text('5-7PM',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w700)),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16.0, bottom: 16),
                                child: SizedBox(
                                  width: 165,
                                  height: 3,
                                  child: Container(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Text('\$30',
                                  style: TextStyle(
                                      color: Color(0xFF5F54ED),
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.w700)),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                    'Your Visa Card **** 8789 will be charged',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                    )),
                              ),
                              RaisedButton(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                color: Color(0xFF5F54ED),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ModalReserve()));
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    width: 45,
                    height: 45,
                    left: 16,
                    top: 0,
                    child: FloatingActionButton(
                        backgroundColor: Color(0xFF5F54ED),
                        shape: CircleBorder(),
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Icon(
                            Icons.cancel_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          // shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: 32,
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                // Container(
                //   height: MediaQuery.of(context).size.height * 0.3,
                //   width: MediaQuery.of(context).size.width,
                //   // child: Image(
                //   //     fit: BoxFit.cover,
                //   //     image: AssetImage("assets/asset-1.png"))
                // ),

                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: 140,
                //   margin: EdgeInsets.fromLTRB(32, 16, 32, 0),
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.only(
                //         topRight: Radius.circular(10),
                //         topLeft: Radius.circular(10)),
                //     child: Image.asset(
                //       // "assets/backgroundNewLogisn.png",
                //       'assets/asset-1.png',

                //       fit: BoxFit.fill,
                //       // height: 1000.0,
                //     ),
                //   ),
                // ),

                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      margin: EdgeInsets.fromLTRB(32, 16, 32, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        child: Image.asset(
                          // "assets/backgroundNewLogisn.png",
                          'assets/asset-1.png',

                          fit: BoxFit.fill,
                          // height: 1000.0,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                      margin: EdgeInsets.fromLTRB(32, 0, 32, 64),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 22),
                      // height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            2, 2, 2, 2),
                                        height: 59.0,
                                        width: 59.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0.0, 1.0), //(x,y)
                                              blurRadius: 6.0,
                                            ),
                                          ],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                        ),
                                        child: Column(children: <Widget>[
                                          Text('Jan',
                                              style: TextStyle(
                                                  color: Color(0xFF5F54ED),
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w300)),
                                          Text('22',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 26.0,
                                                  fontWeight: FontWeight.w600)),
                                        ]))
                                  ],
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Spring Welcome Party',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700)),
                                    Text('Host - Dj Clinton',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                        )),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text('306 Richamond Drive',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('People Attending',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                        )),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text('129',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Time',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                        )),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text('5-7PM',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 16.0, bottom: 16),
                              child: SizedBox(
                                width: 165,
                                height: 3,
                                child: Container(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Text('\$30',
                                style: TextStyle(
                                    color: Color(0xFF5F54ED),
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w700)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                  'Your Visa Card **** 8789 will be charged',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                  )),
                            ),
                            RaisedButton(
                              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                              color: Color(0xFF5F54ED),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Dialog(
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                                spreadRadius: 80,
                                                blurRadius: 25,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          // color: Colors.transparent,
                                          // height: 400,
                                          child: Padding(
                                              padding: EdgeInsets.all(1.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  // DropDownWidget(),
                                                  SizedBox(height: 16),
                                                  // DatePickerWidget(),
                                                  SizedBox(height: 20),
                                                  Text("Bringing guests?",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 28)),
                                                  SizedBox(height: 26),
                                                  // OnlySlidePicker(),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          50)),
                                                          color: Colors.grey,
                                                        ),
                                                        width: 60,
                                                        height: 60,
                                                        child: Center(
                                                          // bottom: 60,
                                                          child: Text("-",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize:
                                                                      36)),
                                                        ),
                                                      ),
                                                      Text("1",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 48)),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          50)),
                                                          color:
                                                              Color(0xFF5F54ED),
                                                        ),
                                                        width: 60,
                                                        height: 60,
                                                        child: Center(
                                                          // bottom: 60,
                                                          child: Text("+",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize:
                                                                      26)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 140),
                                                  Center(
                                                    child: Container(
                                                      height: 50,
                                                      width: 120,

                                                      // padding:
                                                      //     EdgeInsets.fromLTRB(
                                                      //         32, 32, 32, 32),
                                                      child: RaisedButton(
                                                        elevation: 10,
                                                        shape: new RoundedRectangleBorder(
                                                            borderRadius:
                                                                new BorderRadius
                                                                    .all(new Radius
                                                                        .circular(
                                                                    8.0))),
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          DrinkPage()));
                                                        },
                                                        color:
                                                            Color(0xFF5F54ED),
                                                        child: Text(
                                                          "Continue",
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 32,
                                                  ),
                                                  TextButton(
                                                    child: Text(
                                                      'Skip',
                                                      style: TextStyle(
                                                        // color: Color(0xFF527DAA),
                                                        color: Colors.white,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        // decorationStyle: TextDecorationStyle.solid,
                                                        decorationThickness: 3,

                                                        letterSpacing: 1.5,
                                                        fontSize: 18.0,
                                                        // fontWeight: FontWeight.bold,
                                                        // fontFamily: 'OpenSans',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                      );
                                    });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    width: 45,
                    height: 45,
                    left: 16,
                    top: 0,
                    child: FloatingActionButton(
                        backgroundColor: Color(0xFF5F54ED),
                        shape: CircleBorder(),
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Icon(
                            Icons.cancel_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })),

                // Positioned(
                //   top: 20,
                //   left: 20,
                //   child: Container(
                //       height: 45,
                //       width: 45,
                //       // color: Colors.white,
                //       child: FloatingActionButton(
                //           backgroundColor: Colors.white,
                //           shape: CircleBorder(),
                //           elevation: 20,
                //           child: Padding(
                //             padding: const EdgeInsets.only(left: 8.0),
                //             child: Icon(
                //               Icons.arrow_back_ios,
                //               color: Color(0xFF5F54ED),
                //               size: 26,
                //             ),
                //           ),
                //           onPressed: () {
                //             Navigator.pop(context);
                //           })),
                // ),
                // Positioned(
                //     top: 160,
                //     width: MediaQuery.of(context).size.width,
                //     height: MediaQuery.of(context).size.height * 0.258,

                //     // left: MediaQuery.of(context).size.width * 0.1,
                //     child: Container(
                //         padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                //         margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                //         // width: MediaQuery.of(context).size.width * 0.8,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.all(Radius.circular(16)),
                //           color: Colors.white,
                //         ),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Column(
                //               mainAxisAlignment: MainAxisAlignment.start,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: <Widget>[
                //                 Padding(
                //                   padding: EdgeInsets.only(left: 10),
                //                   child: Text("Spring Welcome Party",
                //                       style: TextStyle(
                //                           fontSize: 20,
                //                           fontWeight: FontWeight.bold,
                //                           fontFamily: "Montserrat")),
                //                 ),
                //                 SizedBox(
                //                   height: 8,
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.only(left: 10),
                //                   child: Text("Hosted By: DJ Clint",
                //                       style: TextStyle(
                //                           fontSize: 14, color: Colors.grey)),
                //                 ),
                //                 SizedBox(height: 8),
                //                 Container(
                //                     padding:
                //                         const EdgeInsets.fromLTRB(10, 10, 0, 0),
                //                     height: MediaQuery.of(context).size.height *
                //                         0.1,
                //                     // width: 20,
                //                     child: Row(children: <Widget>[
                //                       Container(
                //                         padding: EdgeInsets.only(top: 5.0),
                //                         width: 60,
                //                         height: 70,
                //                         decoration: BoxDecoration(
                //                           borderRadius: BorderRadius.all(
                //                               Radius.circular(10)),
                //                           color: Colors.grey[200],
                //                         ),
                //                         child: Column(
                //                           children: <Widget>[
                //                             Text("Dec",
                //                                 style: TextStyle(
                //                                   fontSize: 15,
                //                                   color: Color(0xFF5F54ED),
                //                                 )),
                //                             Text("22",
                //                                 style: TextStyle(
                //                                     color: Colors.black,
                //                                     fontSize: 20.0,
                //                                     fontWeight:
                //                                         FontWeight.bold))
                //                           ],
                //                         ),
                //                       ),
                //                       SizedBox(
                //                         width: 20,
                //                       ),
                //                       Column(children: <Widget>[
                //                         Row(
                //                           children: <Widget>[
                //                             Text(
                //                               "306 Rchmond Drive",
                //                               style: TextStyle(fontSize: 14),
                //                             )
                //                           ],
                //                         ),
                //                         SizedBox(
                //                           height: 12,
                //                         ),
                //                         Row(
                //                           children: <Widget>[
                //                             Icon(Icons.person,
                //                                 color: Color(0xFF5F54ED)),
                //                             Text("129"),
                //                             SizedBox(
                //                               width: 10,
                //                             ),
                //                             Icon(Icons.access_time,
                //                                 color: Color(0xFF5F54ED)),
                //                             Text("5 - 7 PM"),
                //                           ],
                //                         )
                //                       ])
                //                     ])),
                //               ],
                //             ),
                //           ],
                //         ))),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 155, 0, 16),
            //   child: Column(
            //     children: <Widget>[
            //       Container(
            //         width: 120,
            //         child: RaisedButton(
            //           padding: EdgeInsets.all(12),
            //           color: Color(0xFF5F54ED),
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.all(Radius.circular(10))),
            //           child: Text(
            //             "Reserve",
            //             style: TextStyle(color: Colors.white, fontSize: 20),
            //           ),
            //           onPressed: () {
            //             Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                     builder: (context) => ModalReserve()));
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // Container(
            //     margin: EdgeInsets.fromLTRB(36, 0, 40, 0),
            //     // height: MediaQuery.of(context).size.height * 0.2,
            //     child: Column(
            //       children: <Widget>[
            //         Row(
            //           children: <Widget>[
            //             Icon(
            //               Icons.info,
            //               color: Colors.black,
            //               size: 32,
            //             ),
            //             SizedBox(width: 2),
            //             Text("Description",
            //                 style:
            //                     TextStyle(color: Colors.black, fontSize: 22.0))
            //           ],
            //         ),
            //         SizedBox(height: 8),
            //         Padding(
            //           padding: const EdgeInsets.only(left: 8.0),
            //           child: Text(
            //               "The Spring Welcome Party 2020 is brought to you by DJ Clint. Come party to the best of afrobeats and make new friends",
            //               style:
            //                   TextStyle(color: Colors.black54, fontSize: 18)),
            //         ),
            //         SizedBox(height: 16),
            //       ],
            //     )),

            // Container(
            //   margin: EdgeInsets.fromLTRB(16, 8, 2, 8),
            //   // height: screenSize.height * 0.3,
            //   child: Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: <Widget>[
            //         Row(
            //           children: <Widget>[
            //             Padding(
            //               padding: const EdgeInsets.only(left: 16.0),
            //               child: Text("Gallery",
            //                   textAlign: TextAlign.left,
            //                   style: TextStyle(
            //                     fontSize: 22,
            //                     color: Colors.black,
            //                   )),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           height: 8,
            //         ),
            //         // HorizontalView(),
            //         SizedBox(
            //           height: 16,
            //         ),
            //       ]),
            // ),

            // Container(
            //   padding: EdgeInsets.only(left: 40),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Row(
            //         children: <Widget>[
            //           Text("Activities",
            //               style: TextStyle(
            //                   color: Colors.black54,
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 22)),
            //         ],
            //       ),
            //       SizedBox(height: 10),
            //       Text("Beer Pong",
            //           style: TextStyle(color: Colors.black54, fontSize: 18)),
            //       Text("Spin the Bottle",
            //           style: TextStyle(color: Colors.black54, fontSize: 18)),
            //       Text("Truth or Dare",
            //           style: TextStyle(color: Colors.black54, fontSize: 18)),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 20.0),
            //   child: Container(
            //     // height: screenSize.height * 0.2,
            //     padding: EdgeInsets.only(left: 40),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //         Row(
            //           children: <Widget>[
            //             Text("Dress Code",
            //                 style: TextStyle(
            //                     color: Colors.black54,
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 22)),
            //           ],
            //         ),
            //         SizedBox(height: 10),
            //         Text("Metro Urban",
            //             style: TextStyle(color: Colors.black54, fontSize: 18)),
            //       ],
            //     ),
            //   ),
            // ),
            // Container(
            //   padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Row(
            //         children: <Widget>[
            //           Padding(
            //             padding: const EdgeInsets.only(left: 40.0),
            //             child: Text("People Attending(129)",
            //                 style: TextStyle(
            //                     color: Colors.black54,
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 22)),
            //           ),
            //         ],
            //       ),
            //       SizedBox(height: 16),
            //       // SubHorizontalView(),
            //     ],
            //   ),
            // ),
            // Container(
            //   // height: screenSize.height * 0.15,
            //   padding:
            //       EdgeInsets.only(left: 40, right: 20, top: 40, bottom: 40),
            // ),
          ],
        ));

    // Scaffold(
    //   body: Stack(
    //     children: [
    //       Container(
    //         color: Colors.grey[300],
    //       ),
    //       _body(),
    //     ],
    //   ),
    // );
  }
}
