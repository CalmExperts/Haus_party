import 'package:flutter/material.dart';

class OnlySlidePicker extends StatefulWidget {
  @override
  _OnlySlidePickerState createState() => _OnlySlidePickerState();
}

class _OnlySlidePickerState extends State<OnlySlidePicker> {
  double value = 200;

  @override
  Widget build(BuildContext context) {
    const double min = 0;
    const double max = 1000;

    return Container(
      width: 300,
      child: Column(
        children: [
          SliderTheme(
            // ignore: prefer_const_constructors
            data: SliderThemeData(
              showValueIndicator: ShowValueIndicator.never,
              trackHeight: 8,
              thumbColor: const Color(0xFF5F54ED),
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 20),
            ),
            child: Slider(
              value: value,
              min: min,
              max: max,
              divisions: 50,
              label: value.round().toString(),
              onChanged: (value) => setState(() => this.value = value),
            ),
          ),
          Text(
            value.round().toString() + (value >= 1000 ? ' km' : ' m'),
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }
}
