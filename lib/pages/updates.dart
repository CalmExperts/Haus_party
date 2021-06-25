import 'package:flutter/material.dart';
import 'package:haus_party/components/bottom_bar.dart';


class UpdateScreen extends StatelessWidget {


  @override 
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: ListView(
        children: <Widget>[
          Container(
            height: size.height * 0.15,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios, color: Color(0xFF5F54ED))
                ), 
                Text("Updates", style: TextStyle(color: Colors.black54, fontSize: 20.0)),
                Text("")
              ]
            ),
            ),
            )
        ]
      ),

      bottomNavigationBar: BottomBar(),

    );

  }
}