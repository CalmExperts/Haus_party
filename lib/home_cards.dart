import 'package:flutter/material.dart';
import 'package:haus_party/page_description.dart';

class PartyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height  * 0.50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemExtent: MediaQuery.of(context).size.height  * 0.50,
        itemBuilder: (BuildContext context, int i) => CardItem(),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,20,0,20),
      child: Card(
        color: Color(0xFF5F54ED),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Column(children: <Widget>[
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/asset-1.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
             Flexible(child: Content())
        ]),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              SizedBox(width: 5.0),
              Container(
                padding: const EdgeInsets.fromLTRB(10,10,10,10),
                height: 49.0,
                width: 49.0, 
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: <Widget>[
                    Text('Dec', style: TextStyle(color: Colors.black, fontSize: 11.0, fontWeight: FontWeight.bold)),
                    Text('31', style: TextStyle(color: Color(0xFF5F54ED), fontSize: 13.0, fontWeight: FontWeight.bold)),

                  ]
                )
              ),
              SizedBox(width: 10.0),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Spring Welcome Party',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left),
                    SizedBox(height: 3.0),
                    Text(
                      'Hosted by DJ Clint',
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      '306 Richmond Druve',
                      style: TextStyle(fontSize: 10.0, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ]),
            ],
          ),
          SizedBox(height: 15.0),
          Row(children: <Widget>[
            SizedBox(width: 7.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('People Attending',
                    style: TextStyle(fontSize: 8.0, color: Colors.white),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 3.0,
                ),
                Text('129',
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left),
              ],
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Time',
                    style: TextStyle(fontSize: 8.0, color: Colors.white),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 5.0,
                ),
                Text('5-7PM',
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left),
              ],
            ),
            Spacer(),
            Container(
              width: 65,
              height: 30,
              child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PartyDesc()));
                  },
                  color: Colors.white,
                  disabledColor: Colors.white,
                  child: Text('View',
                      style: TextStyle(fontSize: 10.0, color: Color(0xFF5F54ED)))),
            ),
          ]),
        ],
      ),
    );
  }
}
