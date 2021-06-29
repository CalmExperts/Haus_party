import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haus_party/models/event.dart';
import 'package:haus_party/pages/page_description.dart';
import 'package:http/http.dart' as http;

class VerticalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var link = Uri.parse(
        "https://us-central1-calmevents-7de4e.cloudfunctions.net/api/v1/all");
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      height: MediaQuery.of(context).size.height * 0.5,
      child: FutureBuilder<http.Response>(
        initialData: null,
        future: http.get(link),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          var result = json.decode(snapshot.data!.body) as List;

          var myModels =
              result.map((value) => EventModel.fromJson(value)).toList();
          //
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: myModels.length,
            itemExtent: MediaQuery.of(context).size.width,
            itemBuilder: (BuildContext context, int i) {
              return VerticalCardItem(
                event: myModels[i],
              );
            },
          );
        },
      ),
    );
  }
}

class VerticalCardItem extends StatelessWidget {
  final EventModel? event;
  const VerticalCardItem({
    Key? key,
    this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 08, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PartyDesc(
                event: event,
              ),
            ),
          );
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
                    topRight: Radius.circular(10),
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      //'assets/profile_image.jpg',
                      'assets/asset-1.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            if (event != null)
              Container(
                  child: Content(
                event: event,
              ))
          ]),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  final EventModel? event;

  const Content({Key? key, this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var date = new DateTime.fromMillisecondsSinceEpoch(
        event!.date['_seconds'] * 1000);

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
                    Text('Dec',
                        style: TextStyle(
                            color: Color(0xFF5F54ED),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400)),
                    Text('${date.day}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w600)),
                  ])),
              SizedBox(width: 16.0),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${event!.title}",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        textAlign: TextAlign.left),
                    SizedBox(height: 3.0),
                    Text(
                      'Hosted by DJ Clint',
                      style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      '${event!.address!.address}',
                      style: GoogleFonts.sofia(
                          textStyle: TextStyle(
                              fontSize: 13, color: Colors.white)),
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
                    Text('People Attending',
                        style:
                            TextStyle(fontSize: 13, color: Colors.white),
                        textAlign: TextAlign.left),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('${event!.maxAttendees}',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left),
                  ],
                ),
                SizedBox(width: 48),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Time',
                        style:
                            TextStyle(fontSize: 13, color: Colors.white),
                        textAlign: TextAlign.left),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('${date.hour} p.m.',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left),
                  ],
                ),
              ]),
          SizedBox(height: 4.0),
        ],
      ),
    );
  }
}
