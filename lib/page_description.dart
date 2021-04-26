import 'package:flutter/material.dart';

class HorizontalView extends StatefulWidget {
  @override
  _HorizontalViewState createState() => _HorizontalViewState();
}

class _HorizontalViewState extends State<HorizontalView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.symmetric(horizontal: 8),
        physics: BouncingScrollPhysics(),
        itemCount: 6,
        // itemExtent: MediaQuery.of(context).size.width,
        itemExtent: 160,

        itemBuilder: (BuildContext context, int i) => GalleryImage(),
      ),
    );
  }
}

class PartyDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          // shrinkWrap: true,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/asset-1.png"))),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                      height: 45,
                      width: 45,
                      // color: Colors.white,
                      child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                          elevation: 20,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFF5F54ED),
                              size: 26,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          })),
                ),
                Positioned(
                    top: 160,
                    left: MediaQuery.of(context).size.width * 0.1,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: MediaQuery.of(context).size.height * 0.232,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("Spring Welcome Party",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat")),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("Hosted By: DJ Clint",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey)),
                            ),
                            SizedBox(height: 5),
                            Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                // width: 20,
                                child: Row(children: <Widget>[
                                  Container(
                                    color: Colors.grey[200],
                                    padding: EdgeInsets.only(top: 5.0),
                                    width: 50,
                                    height: 70,
                                    child: Column(
                                      children: <Widget>[
                                        Text("Dec",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        Text("22",
                                            style: TextStyle(
                                                color: Color(0xFF5F54ED),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text("306 Rchmond Drive")
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.person,
                                            color: Color(0xFF5F54ED)),
                                        Text("129"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.access_time,
                                            color: Color(0xFF5F54ED)),
                                        Text("5 - 7 PM"),
                                      ],
                                    )
                                  ])
                                ])),
                          ],
                        ))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 135, 0, 16),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 120,
                    child: RaisedButton(
                        padding: EdgeInsets.all(12),
                        color: Color(0xFF5F54ED),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          "Reserve",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(36, 0, 40, 0),
                // height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.info,
                          color: Colors.black,
                          size: 32,
                        ),
                        SizedBox(width: 2),
                        Text("Description",
                            style:
                                TextStyle(color: Colors.black, fontSize: 22.0))
                      ],
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                          "The Spring Welcome Party 2020 is brought to you by DJ Clint. Come party to the best of afrobeats and make new friends",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 18)),
                    ),
                    SizedBox(height: 16),
                  ],
                )),
            Container(
              margin: EdgeInsets.fromLTRB(16, 8, 2, 8),
              // height: screenSize.height * 0.3,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text("Gallery",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    HorizontalView(),
                    SizedBox(
                      height: 16,
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(left: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Activities",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Beer Pong",
                      style: TextStyle(color: Colors.black54, fontSize: 18)),
                  Text("Spin the Bottle",
                      style: TextStyle(color: Colors.black54, fontSize: 18)),
                  Text("Truth or Dare",
                      style: TextStyle(color: Colors.black54, fontSize: 18)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                // height: screenSize.height * 0.2,
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Dress Code",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 22)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text("Metro Urban",
                        style: TextStyle(color: Colors.black54, fontSize: 18)),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 40, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("People Attending(129)",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                    ],
                  ),
                  SizedBox(height: 16),
                  HorizontalView(),
                ],
              ),
            ),
            Container(
              // height: screenSize.height * 0.15,
              padding:
                  EdgeInsets.only(left: 40, right: 20, top: 40, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Invite Friends",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 22,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hoverColor: Colors.grey,
                        border: OutlineInputBorder(),
                        hintText: 'E-mail',
                        suffixIcon:
                            Icon(Icons.file_upload, color: Colors.black)),
                    // onSubmitted: () {},
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    cursorRadius: Radius.zero,
                    cursorWidth: 2.0,
                    keyboardAppearance: Brightness.light,
                    showCursor: true,
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class GalleryImage extends StatelessWidget {
  // const GalleryImage({
  //   this.imageUrl,
  // });

  // final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.red,
      ),
      height: 65,
      width: 65,
      margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
      child: Image.asset(
        // "assets/backgroundNewLogisn.png",
        'assets/drink_image.png',

        height: 65,
        width: 65,
        fit: BoxFit.contain,
        // height: 1000.0,
      ),
    );
  }
}
