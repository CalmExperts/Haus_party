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
    _profileVerticalDialog() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              spreadRadius: 80,
              blurRadius: 25,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        // color: Colors.transparent,
        // height: 400,
        child: Padding(
            padding: EdgeInsets.all(1.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // DropDownWidget(),
                // DatePickerWidget(),

                Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.cancel_outlined,
                          color: Colors.white,
                          size: 26,
                        ),
                      )
                    ]),

                Column(
                  children: [
                    TextButton(
                      onPressed: () => print('logout'),
                      child: Text("Logout",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            decoration: TextDecoration.underline,
                            decorationThickness: 1,
                          )),
                    ),
                    SizedBox(height: 32),
                    TextButton(
                      onPressed: () => print('About'),
                      child: Text("About",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            decoration: TextDecoration.underline,
                            decorationThickness: 1,
                          )),
                    ),
                  ],
                ),

                SizedBox(),

                Column(
                  children: [
                    TextButton(
                      child: Text(
                        'Desactivate Account',
                        style: TextStyle(
                          // color: Color(0xFF527DAA),
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          // decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 3,

                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          // fontWeight: FontWeight.bold,
                          // fontFamily: 'OpenSans',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                )
              ],
            )),
      );
    }

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
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Your Profile',
                style: GoogleFonts.sofia(
                    fontWeight: FontWeight.normal,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 26,
            ),
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return Dialog(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: LayoutBuilder(builder: (context, constraints) {
                          return _profileVerticalDialog();
                          // else {
                          //   return _horizontalDialog();
                          // }
                        }));
                  });

              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ProfileSettings()));
            },
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              color: Color(0xFF5F54ED),
              // height: MediaQuery.of(context).size.height * 0.40,
              child: Column(children: <Widget>[
                SizedBox(height: 16),
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
                      SizedBox(
                        height: 32,
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
                      width: 120,
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
                        SizedBox(
                          height: 8,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: BottomBar(),
    );
  }
}
