import 'package:flutter/material.dart';

class DatePickerLogin extends StatefulWidget {
  @override
  _DatePickerLoginState createState() => _DatePickerLoginState();
}

class _DatePickerLoginState extends State<DatePickerLogin> {
  String dateTimeValue = "Date";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 32, 0, 64),
      child: GestureDetector(
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200],
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.date_range,
                  color: Color(0xFF5F54ED),
                  size: 22.0,
                ),
                Text(
                  dateTimeValue,
                  style: TextStyle(
                      // color: dateTimeValue == "Date"
                      // ?
                      color: Color(0xFF5F54ED),
                      // : Colors.black,
                      fontSize: 22.0),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 22.0,
                ),
              ],
            ),
          ),
          onTap: () async {
            final data = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2021),
              lastDate: DateTime(2028),
              locale: Locale("en", "US"),
            );
            // print(data);
            setState(() {
              dateTimeValue =
                  ("${data.day} / ${data.month} / ${data.year}").toString();
            });
          }),
    );
  }
}
