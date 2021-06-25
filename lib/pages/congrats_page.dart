import 'package:flutter/material.dart';
import 'package:haus_party/pages/calendar_page.dart';
import 'package:haus_party/login_page/widgets/button_editable.dart';
import 'package:haus_party/pages/drinkPage/drink_page.dart';

class CongratsPage extends StatefulWidget {
  @override
  _CongratsPageState createState() => _CongratsPageState();
}

class _CongratsPageState extends State<CongratsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          // shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: 32,
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Column(
                  children: [
                    SizedBox(
                      height: 64,
                    ),
                    Text('Congratulations!',
                        style: TextStyle(
                            color: Color(0xFF5F54ED),
                            fontSize: 28.0,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 32,
                    ),
                    Text('You +1 guest are going!',
                        style: TextStyle(
                            color: Color(0xFF5F54ED),
                            fontSize: 22.0,
                            fontWeight: FontWeight.w700)),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      child: Image.asset(
                                        // "assets/backgroundNewLogisn.png",
                                        'assets/asset-1.png',

                                        fit: BoxFit.cover,
                                        height: 65.0,
                                        width: 65.0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('January 22(5-7PM)',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                        )),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text('Spring Welcome Party',
                                        style: TextStyle(
                                            color: Color(0xFF5F54ED),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text('Host - Dj Clinton',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 160,
                            ),
                            Container(
                                width: 280,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[800],
                                        blurRadius: 2.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(2.0,
                                            2.0), // shadow direction: bottom right
                                      )
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CalendarScreen()));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.share_outlined,
                                          color: Colors.white,
                                          size: 28,
                                        ),
                                      ),
                                      Text(
                                        "Tell Friends",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            // Container(
                            //   width: 280,
                            //   height: 50,
                            //   child: RaisedButton(
                            //     elevation: 10,
                            //     shape: new RoundedRectangleBorder(
                            //         borderRadius: new BorderRadius.all(
                            //             new Radius.circular(8.0))),
                            //     onPressed: () {
                            //       Navigator.push(
                            //           context,
                            //           MaterialPageRoute(
                            //               builder: (context) =>
                            //                   CongratsPage()));
                            //     },
                            //     color: Colors.grey,
                            //     child: Row(
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       children: [
                            //         Padding(
                            //           padding:
                            //               const EdgeInsets.only(right: 8.0),
                            //           child: Icon(
                            //             Icons.share_outlined,
                            //             color: Colors.white,
                            //             size: 28,
                            //           ),
                            //         ),
                            //         Text(
                            //           "Tell Friends",
                            //           style: TextStyle(
                            //             fontSize: 16,
                            //             color: Colors.white,
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 26.0),

                              child: ButtonEditable(
                                buttonTitle: 'Done',
                                theWidth: 280,
                                theHeight: 50,
                                theBorderRadius: 8,
                                sizeText: 18,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CalendarScreen()));
                                },
                              ),
                              // child: Container(
                              //   width: 280,
                              //   height: 50,
                              //   child: RaisedButton(
                              //     elevation: 10,
                              //     shape: new RoundedRectangleBorder(
                              //         borderRadius: new BorderRadius.all(
                              //             new Radius.circular(8.0))),
                              //     onPressed: () {
                              //       Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //               builder: (context) =>
                              //                   CalendarScreen()));
                              //     },
                              //     color: Color(0xFF5F54ED),
                              //     child: Text(
                              //       "Done",
                              //       style: TextStyle(
                              //         fontSize: 16,
                              //         color: Colors.white,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
