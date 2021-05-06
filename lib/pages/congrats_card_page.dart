import 'package:flutter/material.dart';
import 'package:haus_party/login_page/widgets/button_editable.dart';

class CongratsCardPage extends StatelessWidget {
  final String name;

  const CongratsCardPage({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          // shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: 64,
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5F54ED),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      margin: EdgeInsets.fromLTRB(32, 0, 32, 64),
                      height: 400,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 22),
                      // height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Icon(
                              Icons.library_add_check_sharp,
                              color: Colors.white,
                              size: 84,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text('CONGRATULATIONS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1.5,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Text(name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1.5,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700)),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 32.0, horizontal: 16),
                              child:
                                  Text('Your Card has been successfully added',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey[300],
                                        fontSize: 14.0,
                                      )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 64),
              child: ButtonEditable(
                buttonTitle: 'Continue',
                sizeText: 18,
                theWidth: 160,
                theHeight: 48,
                theBorderRadius: 8,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: 32,
            )
            // Container(
            //     width: 80,
            //     height: 64,
            //     margin: EdgeInsets.symmetric(horizontal: 64),
            //     decoration: BoxDecoration(
            //         color: Color(0xFF5F54ED),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey[800],
            //             blurRadius: 2.0,
            //             spreadRadius: 0.0,
            //             offset:
            //                 Offset(2.0, 2.0), // shadow direction: bottom right
            //           )
            //         ],
            //         borderRadius: BorderRadius.all(Radius.circular(8))),
            //     child: TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         'Continue',
            //         style: TextStyle(
            //           fontSize: 18,
            //           // backgroundColor: Colors.white,
            //           color: Colors.white,
            //         ),
            //       ),
            //     )),
            // ),
          ],
        ));
  }
}
