import 'package:flutter/material.dart';
import 'package:haus_party/bottom_bar.dart';
import 'package:haus_party/pages/modal_reserve.dart';

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

        itemBuilder: (BuildContext context, int i) => GalleryImage(
          subImage: 'normal',
        ),
      ),
    );
  }
}

class SubHorizontalView extends StatefulWidget {
  @override
  _SubHorizontalViewState createState() => _SubHorizontalViewState();
}

class _SubHorizontalViewState extends State<SubHorizontalView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.symmetric(horizontal: 8),
        physics: BouncingScrollPhysics(),
        itemCount: 6,
        // itemExtent: MediaQuery.of(context).size.width,
        itemExtent: 108,

        itemBuilder: (BuildContext context, int i) => GalleryImage(
          subImage: 'sub',
        ),
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
              LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth < 500) {
                  return Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/asset-1.png")));
                } else {
                  return Container(
                      height: 208,
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/asset-1.png")));
                }
              }),
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
                  width: MediaQuery.of(context).size.width,

                  // left: MediaQuery.of(context).size.width * 0.1,
                  child: LayoutBuilder(builder: (context, constraints) {
                    if (constraints.maxWidth < 500) {
                      return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
                          margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          // width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
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
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Hosted By: DJ Clint",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 0, 0),
                                      // height:
                                      //     MediaQuery.of(context).size.height * 0.1,
                                      // width: 20,
                                      child: Row(children: <Widget>[
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.grey[200],
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text("Dec",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0xFF5F54ED),
                                                  )),
                                              Text("22",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "306 Rchmond Drive",
                                                style: TextStyle(fontSize: 14),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 12,
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
                              ),
                            ],
                          ));
                    } else {
                      return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
                          margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          // width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
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
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Hosted By: DJ Clint",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 0, 0),
                                      // height:
                                      //     MediaQuery.of(context).size.height * 0.1,
                                      // width: 20,
                                      child: Row(children: <Widget>[
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.grey[200],
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text("Dec",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0xFF5F54ED),
                                                  )),
                                              Text("22",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "306 Rchmond Drive",
                                                style: TextStyle(fontSize: 14),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 12,
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
                              ),
                            ],
                          ));
                    }
                  }))
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(0, 160, 0, 32),
                  width: 120,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Color(0xFF5F54ED),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[800],
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              2.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ModalReserve()));
                    },
                    child: Text(
                      'Reserve',
                      style: TextStyle(
                        fontSize: 18,
                        // backgroundColor: Colors.white,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ],
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
                          style: TextStyle(color: Colors.black, fontSize: 22.0))
                    ],
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                        "The Spring Welcome Party 2020 is brought to you by DJ Clint. Come party to the best of afrobeats and make new friends",
                        style: TextStyle(color: Colors.black54, fontSize: 18)),
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
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text("People Attending(129)",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                SubHorizontalView(),
              ],
            ),
          ),
          Container(
            // height: screenSize.height * 0.15,
            padding: EdgeInsets.only(left: 40, right: 20, top: 40, bottom: 40),
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
                  autofocus: false,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[400],
                    filled: true,

                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0),
                      ),
                    ),
                    hintText: 'E-mail',
                    hintStyle: TextStyle(color: Colors.white),
                    // suffixIcon:
                    //     Icon(Icons.file_upload, color: Colors.black)
                  ),
                  // onSubmitted: () {},
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  cursorRadius: Radius.zero,
                  cursorWidth: 2.0,
                  keyboardAppearance: Brightness.light,
                  showCursor: true,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class GalleryImage extends StatelessWidget {
  const GalleryImage({
    this.subImage,
  });

  final String subImage;
  @override
  Widget build(BuildContext context) {
    return subImage != 'sub'
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.red,
            ),
            height: 65,
            width: 65,
            margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                // "assets/backgroundNewLogisn.png",
                'assets/asset-1.png',

                fit: BoxFit.cover,
                // height: 1000.0,
              ),
            ),
          )
        : Container(
            height: 60,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              color: Colors.red,
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              child: Image.asset(
                // "assets/backgroundNewLogisn.png",
                'assets/asset-1.png',

                fit: BoxFit.cover,
                // height: 1000.0,
              ),
            ),
          );
  }
}
