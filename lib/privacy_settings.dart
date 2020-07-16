import 'package:flutter/material.dart';

import 'labelled_switch.dart';

class PrivacySettings extends StatelessWidget {
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
        title: Text('Privacy',
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
            Container(
              child:
            PrivacySettingsStateful(),
            color: Colors.white
              )
          ],
        ),
      ),
    );
  }
}

class PrivacySettingsStateful extends StatefulWidget {
  PrivacySettingsStateful({Key key}) : super(key: key);

  @override
  _PrivacySettingsStatefulState createState() => _PrivacySettingsStatefulState();
}

class _PrivacySettingsStatefulState extends State<PrivacySettingsStateful> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return LabeledSwitch(
      label: "Hide Mode",
       padding: const EdgeInsets.symmetric(horizontal: 20.0),
      value: _isSelected,
      onChanged: (bool newValue) {
        setState(() {
          _isSelected = newValue;
        });
      },
    );
  }
}
