import 'package:flutter/material.dart';
import 'package:haus_party/bottom_bar.dart';
import 'package:haus_party/party_details_2.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart' show DateFormat;

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F54ED),
      body: ListView(children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.date_range, color: Colors.white),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            height: MediaQuery.of(context).size.height * 0.58,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: CalendarScreenStateful(),
          ),
        ),
        // SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Text(
            "Upcoming Parties",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
          ),
        ),
        UpcomingParty(
          partyDateTime: "20",
          partyTitle: "Spring Welcome Party",
          partyHost: "DJ Clinton",
          partyAddress: "306 Richmond Drive"
        ),
        UpcomingParty(
          partyDateTime: "48",
          partyTitle: "Greek Fest",
          partyHost: "DJ Clinton",
          partyAddress: "306 Adalia Close"
        ),

      ]),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class CalendarScreenStateful extends StatefulWidget {
  @override
  _CalendarScreenStatefulState createState() => _CalendarScreenStatefulState();
}

class _CalendarScreenStatefulState extends State<CalendarScreenStateful> {
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(calendarController: _controller);
  }
}

class UpcomingParty extends StatelessWidget {
  const UpcomingParty({
    this.partyDateTime,
    this.partyTitle,
    this.partyHost,
    this.partyAddress,
    
  });

  final String partyAddress;
  final String partyHost;
  final String partyTitle;
  final String partyDateTime;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
          height: 53.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PartyDetails(partyDateTime: partyDateTime, partyAddress: partyAddress, partyTitle: partyTitle)));
            },
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      partyDateTime,
                      style: TextStyle(
                        color: Color(0xFF5F54ED),
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      "Hours to Go",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 7.0,
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(children: <Widget>[
                      Text(
                        partyTitle,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.0,
                        ),
                        
                      ),
                      SizedBox(
                        height: 1.0,
                      ),
                      Text(
                        "Host - " + partyHost,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 6.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        partyAddress,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 8.0,
                        ),
                      )
                    ])),
                    // Padding(
                    //   child: 
                    // )
                    Icon(Icons.arrow_forward_ios, color: Color(0xFF5F54ED))
                    
              ],
            ),
          )),
    );
  }
}
