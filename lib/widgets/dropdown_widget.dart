import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  List listItem = ['Vancouver', 'Toronto', 'Montreal', 'Ottawa'];

  String valueChoose;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: DropdownButton(
        hint: Text(
          "City",
          style: TextStyle(color: Color(0xFF5F54ED), fontSize: 28.0),
        ),
        dropdownColor: Colors.white,
        icon: Icon(
          Icons.arrow_drop_down,
          color: Color(0xFF5F54ED),
        ),
        iconSize: 38,
        isExpanded: true,
        underline: SizedBox(
            // height: 2,
            ),
        style: TextStyle(color: Colors.black, fontSize: 26),
        value: valueChoose,
        onChanged: (newValue) {
          setState(() {
            valueChoose = newValue;
          });
        },
        items: listItem.map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
      ),
    );
  }
}
