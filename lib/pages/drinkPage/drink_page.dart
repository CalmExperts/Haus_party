import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haus_party/model/dummy_data.dart';
import 'package:haus_party/pages/congrats_page.dart';
import 'package:haus_party/pages/drinkPage/category_item.dart';

import '../../bottom_bar.dart';
import '../../home_cards.dart';

class DrinkPage extends StatefulWidget {
  @override
  _DrinkPageState createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {
  Widget _ContinueBottomBar() {
    return BottomAppBar(
        color: Colors.transparent,
        elevation: 10.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 60.0,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(25.0),
                //     topRight: Radius.circular(25.0)),
                color: Colors.white),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  // height: 80.0,
                  width: 200,
                  child: Center(
                      child: Container(
                    child: RaisedButton(
                      elevation: 10,
                      shape: new RoundedRectangleBorder(
                          borderRadius:
                              new BorderRadius.all(new Radius.circular(8.0))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CongratsPage()));
                      },
                      color: Color(0xFF5F54ED),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )))
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5F54ED),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 38,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Buy Drinks',
          // style: TextStyle(color: Color(0xFF545D68), fontSize: 20.0),
          style: (TextStyle(color: Colors.white, fontSize: 28.0)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFF5F54ED),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        // margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.fromLTRB(46, 6, 46, 6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Text("\$300",
                            style: new TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          "Total Coast",
                          style: new TextStyle(
                              fontSize: 14.0, color: Colors.white),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Expanded(
            child: Container(
              color: Color(0xFF5F54ED),
              padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: GridView(
                children: DUMMY_CATEGORIES
                    .map((categoryItem) => Container(
                          height: 10,

                          // width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                          padding: EdgeInsets.all(2),
                          child: Container(
                            // height: 20,
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(categoryItem.price,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    child: Image.asset(
                                      // "assets/backgroundNewLogisn.png",
                                      categoryItem.image,

                                      fit: BoxFit.cover,
                                      height: 80.0,
                                      width: 120.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: Text(categoryItem.name,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                  // Row(
                                  //   children: [
                                  //     Text('1',
                                  //         style: TextStyle(
                                  //             color: Colors.black,
                                  //             fontSize: 18.0,
                                  //             fontWeight: FontWeight.w700)),
                                  //   ],
                                  // )

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          color: Colors.grey,
                                        ),
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          // bottom: 60,
                                          child: Text("-",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 26)),
                                        ),
                                      ),
                                      Text("1",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 26)),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          color: Color(0xFF5F54ED),
                                        ),
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          // bottom: 60,
                                          child: Text("+",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 26)),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 26, 0, 0),
                                    child: Container(
                                      width: 90,
                                      height: 36,
                                      child: RaisedButton(
                                        elevation: 10,
                                        shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.all(
                                                new Radius.circular(8.0))),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DrinkPage()));
                                        },
                                        color: Color(0xFF5F54ED),
                                        child: Text(
                                          "Add",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 300),
              ),
            ),
            // child: ListView.builder(
            //     itemCount: 100,
            //     itemExtent: 50.0,
            //     itemBuilder: (BuildContext context, int index) {
            //       return ListTile(title: Text("$index"));
            //     }),
          )
        ],

        // CustomScrollView(slivers: <Widget>[
        //   const SliverAppBar(

        //     pinned: true,
        //     expandedHeight: 0.0,
        //     automaticallyImplyLeading: false,
        //     backgroundColor: Color(0xFF5F54ED),
        //     flexibleSpace: FlexibleSpaceBar(
        //       title: Text('Upcoming Parties2',

        //           textAlign: TextAlign.left,
        //           style: TextStyle(

        //               letterSpacing: 1.5,
        //               fontFamily: 'Varela',
        //               color: Colors.white,
        //               fontSize: 23.0,
        //               fontWeight: FontWeight.bold)),
        //     ),
        //   ),
        //   // Text('asda'),
        //   // SizedBox(height: 15.0),
        //   SliverFixedExtentList(
        //     itemExtent: MediaQuery.of(context).size.height / 2,
        //     delegate: SliverChildBuilderDelegate(
        //       (BuildContext context, int index) {
        //         return Container(
        //             padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
        //             height: MediaQuery.of(context).size.height / 2,
        //             child: CardItem());
        //       },
        //       childCount: 3,
        //     ),
        //   ),
        // ])),
      ),
      bottomNavigationBar: _ContinueBottomBar(),
    );
  }
}
