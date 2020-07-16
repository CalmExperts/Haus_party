import 'package:flutter/material.dart';

class PartyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height  * 0.48,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemExtent: MediaQuery.of(context).size.height  * 0.48,
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
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty.jpg',
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
              Icon(
                Icons.calendar_today,
                size: 40.0,
                color: Colors.white,
              ),
              SizedBox(width: 10.0),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Spring Welcome Party',
                        style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left),
                    SizedBox(height: 3.0),
                    Text(
                      'Hosted by DJ Clint',
                      style: TextStyle(fontSize: 10.0, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      '306 Richmond Druve',
                      style: TextStyle(fontSize: 7.0, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ]),
            ],
          ),
          SizedBox(height: 5.0),
          Row(children: <Widget>[
            SizedBox(width: 15.0),
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
                        fontSize: 10.0,
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
                        fontSize: 10.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left),
              ],
            ),
            // Spacer(),
            SizedBox(width: 50.0),
            Container(
              width: 65,
              child: FlatButton(
                  onPressed: (){},
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
