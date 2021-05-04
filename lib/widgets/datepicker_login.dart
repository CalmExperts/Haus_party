import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  String dateTimeValue = "Date";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dateTimeValue,
                style: TextStyle(
                    color: dateTimeValue == "Date"
                        ? Color(0xFF5F54ED)
                        : Colors.black,
                    fontSize: 28.0),
              ),
              Icon(
                Icons.date_range,
                color: Color(0xFF5F54ED),
                size: 28.0,
              )
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
        });
  }
}
