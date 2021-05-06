import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haus_party/privacy_settings.dart';
import 'package:haus_party/profile_settings.dart';

import 'bottom_bar.dart';
import 'card_details.dart';
import 'home_cards.dart';
import 'login_page/widgets/buttons_profile.dart';
import 'login_page/widgets/responsives/horizontal_card.dart';
import 'login_page/widgets/responsives/vertical_card.dart';
import 'notif_settings.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF5F54ED),

        elevation: 0.0,
        // centerTitle: true,
        // leading: Text('Your Profile'),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Profile',
              style: GoogleFonts.sofia(
                  fontWeight: FontWeight.normal,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                // builder: (context) => LocationSettings()));
              })
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xFF5F54ED),
              // height: MediaQuery.of(context).size.height * 0.40,
              child: Column(children: <Widget>[
                // Container(
                //   // height: MediaQuery.of(context).size.height * 0.1,
                //   padding: EdgeInsets.only(left: 20.0, top: 25.0, bottom: 10.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: <Widget>[
                //       Text(
                //         "Your Profile",
                //         style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 22.0,
                //             fontWeight: FontWeight.bold),
                //       ),
                //       IconButton(
                //         icon: Icon(Icons.more_vert),
                //         color: Colors.white,
                //         onPressed: () {
                //           Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) => ProfileSettings()));
                //         },
                //         iconSize: 26.0,
                //       )
                //     ],
                //   ),
                // ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/profile_image.jpg'),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Text(
                        "Damola Adewunmi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "talk2mm@yahoo.com",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  color: Colors.white,
                ),
                // height: 400,
                // padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Center(
                        child: Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      width: 160,
                      height: 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.grey,
                      ),
                    )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "General",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 8),
                        ButtonsProfile(
                          buttonTitle: 'Payment',
                          buttonDescription: "Visa card **** **** **** 8909",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CardDetails()));
                          },
                        ),
                        ButtonsProfile(
                          buttonTitle: 'Subscriptions',
                          onPressed: () {},
                        ),
                        ButtonsProfile(
                          buttonTitle: 'Notifications',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotifSettings()));
                          },
                        ),
                        ButtonsProfile(
                          buttonTitle: 'Privacy',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PrivacySettings()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}











// import 'package:flutter/material.dart';
// import 'package:haus_party/card_details.dart';
// import 'package:haus_party/login_page/widgets/buttons_profile.dart';
// import 'package:haus_party/privacy_settings.dart';
// import 'package:haus_party/profile_settings.dart';

// import 'bottom_bar.dart';
// import 'notif_settings.dart';

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF5F54ED),
//       body: 
//       Column(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.only(bottom: 32),
//             // height: MediaQuery.of(context).size.height * 0.40,
//             child: Column(children: <Widget>[
//               Container(
//                 // height: MediaQuery.of(context).size.height * 0.1,
//                 padding: EdgeInsets.only(left: 20.0, top: 25.0, bottom: 10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text(
//                       "Your Profile",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 22.0,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.more_vert),
//                       color: Colors.white,
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ProfileSettings()));
//                       },
//                       iconSize: 26.0,
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.04),
//               Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     CircleAvatar(
//                       radius: 50.0,
//                       backgroundImage: AssetImage('assets/profile_image.jpg'),
//                     ),
//                     SizedBox(height: MediaQuery.of(context).size.height * 0.01),
//                     Text(
//                       "Damola Adewunmi",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                           fontSize: 18),
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Text(
//                       "talk2mm@yahoo.com",
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ]),
//           ),
//           Expanded(
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(10.0),
//                     topRight: Radius.circular(10.0)),
//                 color: Colors.white,
//               ),
//               // height: 400,
//               // padding: EdgeInsets.only(left: 10.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   Center(
//                       child: Container(
//                     margin: EdgeInsets.symmetric(vertical: 16),
//                     width: 160,
//                     height: 3,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(25)),
//                       color: Colors.grey,
//                     ),
//                   )),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         "General",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontWeight: FontWeight.w700),
//                       ),
//                       SizedBox(height: 8),
//                       ButtonsProfile(
//                         buttonTitle: 'Payment',
//                         buttonDescription: "Visa card **** **** **** 8909",
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => CardDetails()));
//                         },
//                       ),
//                       ButtonsProfile(
//                         buttonTitle: 'Subscriptions',
//                         onPressed: () {},
//                       ),
//                       ButtonsProfile(
//                         buttonTitle: 'Notifications',
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => NotifSettings()));
//                         },
//                       ),
//                       ButtonsProfile(
//                         buttonTitle: 'Privacy',
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => PrivacySettings()));
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
      
//       bottomNavigationBar: BottomBar(),
//     );
//   }
// }







