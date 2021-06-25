import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haus_party/controllers/login_controller.dart';
import 'package:haus_party/page_description.dart';

class VerticalCard extends StatelessWidget {

  LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 3,//loginController.eventsList.length,
        itemExtent: MediaQuery.of(context).size.width,
        itemBuilder: (BuildContext context, int i) => VerticalCardItem(
          title: 'Spring Welcome Party', //loginController.eventsList[i].title,
          description: 'Hosted by DJ Clint', //loginController.eventsList[i].description,
          location: '306 Richmond Druwe', //loginController.eventsList[i].location,
          date: 'Dec', //loginController.eventsList[i].date,
          time: '5 - 7 p.m.', //loginController.eventsList[i].time,
          image: 'assets/asset-1.png', //loginController.eventsList[i].image,
          dressCode: '12345', //loginController.eventsList[i].dressCode,
          price: 12345, //loginController.eventsList[i].price.toString(),
          maxAttendees: 129, //loginController.eventsList[i].maxAttendees.toString(),
        ),
      ),
    );
  }
}

class VerticalCardItem extends StatelessWidget {

  final String title;
  final String description;
  final String location;
  //final Address address;
  final String date;
  final String time;
  final String image;
  final String dressCode;
  final int price;
  final int maxAttendees;
  //final List<Null> attendees;
  //final List<Null> updates;

  VerticalCardItem ({
    this.title,
    this.description,
    this.location,
    //this.address,
    this.date,
    this.time,
    this.image,
    this.dressCode,
    this.price,
    this.maxAttendees,
    //this.attendees,
    //this.updates,
  });

  /*const VerticalCardItem({
    Key key,
  }) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 08, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PartyDesc()));
        },
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
                  image: DecorationImage(
                    image: AssetImage(
                      this.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(child: Content(
              title: this.title,
              description: this.description,
              location: this.location,
              date: this.date,
              time: this.time,
              dressCode: this.title,
              price: this.price,
              maxAttendees: this.maxAttendees,
            ))
          ]),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {

  final String title;
  final String description;
  final String location;
  //final Address address;
  final String date;
  final String time;
  final String dressCode;
  final int price;
  final int maxAttendees;
  //final List<Null> attendees;
  //final List<Null> updates;

  Content ({
    this.title,
    this.description,
    this.location,
    //this.address,
    this.date,
    this.time,
    this.dressCode,
    this.price,
    this.maxAttendees,
    //this.attendees,
    //this.updates,
  });

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
                  child: Column(children: [

                    Text(this.date,
                        style: TextStyle(
                            color: Color(0xFF5F54ED),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400)
                    ),

                    Text(this.date,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w600)
                    ),

                  ])),

              SizedBox(width: 16.0),

              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(this.title,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        textAlign: TextAlign.left
                    ),

                    SizedBox(height: 3.0),

                    Text(
                      this.description,
                      style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      textAlign: TextAlign.left,
                    ),

                    SizedBox(height: 3.0),

                    Text(
                      this.location,
                      style: GoogleFonts.sofia(
                          textStyle:
                              TextStyle(fontSize: 13, color: Colors.white)),
                      textAlign: TextAlign.left,
                    ),

                  ]),
            ],
          ),

          SizedBox(height: 16.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [

            SizedBox(width: 8.0),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                    'People Attending',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                    textAlign: TextAlign.left
                ),
                
                SizedBox(height: 5.0,),

                Text(
                    this.maxAttendees.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left
                ),

              ],
            ),

            SizedBox(width: 48),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text(
                    'Time',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                    textAlign: TextAlign.left
                ),

                SizedBox(height: 5.0,),

                Text(
                    this.time,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left
                ),

              ],
            ),

          ]),

          SizedBox(height: 4.0),

        ],
      ),
    );
  }
}
