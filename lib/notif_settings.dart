import 'package:flutter/material.dart';

import 'labelled_switch.dart';

class NotifSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Notifications',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            NotifSettingsStateful()
          ],
        ),
      ),
    );
  }
}

class NotifSettingsStateful extends StatefulWidget {
  NotifSettingsStateful({Key key}) : super(key: key);

  @override
  _NotifSettingsStatefulState createState() => _NotifSettingsStatefulState();
}

class _NotifSettingsStatefulState extends State<NotifSettingsStateful> {
  bool _pushNotifSelected = false;
  bool _soundsSelected = false;
  bool _vibrationSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        color: Colors.white,
        child: LabeledSwitch(
          label: "Push Notifications",
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _pushNotifSelected,
          onChanged: (bool newValue) {
            setState(() {
              _pushNotifSelected = newValue;
            });
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,20),
        child: Text("Keep Push Notifications enables to be alerted outside the app", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold))
      ),
      Container(
        color: Colors.white,
        child: LabeledSwitch(
          label: "In-App Sounds",
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _soundsSelected,
          onChanged: (bool newValue) {
            setState(() {
              _soundsSelected = newValue;
            });
          },
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height * 0.02),
      Container(
        color: Colors.white,
        child: LabeledSwitch(
          label: "In-App Vibration",
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _vibrationSelected,
          onChanged: (bool newValue) {
            setState(() {
              _vibrationSelected = newValue;
            });
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,20),
        child: Text("Keep Sounds and Vibrations to be alerted outside the app", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold))
      ),
      
    ]);
  }
}
