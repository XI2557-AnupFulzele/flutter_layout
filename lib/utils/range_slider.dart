import 'package:flutter/material.dart';

class CustomeRangeSlider extends StatefulWidget {
  const CustomeRangeSlider({super.key});

  @override
  State<CustomeRangeSlider> createState() => _CustomeRangeSliderState();
}

class _CustomeRangeSliderState extends State<CustomeRangeSlider> {
  RangeValues _currentRangeValues = const RangeValues(10, 80);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: RangeSlider(
        activeColor: const Color(0xFF6B7406),
        values: _currentRangeValues,
        max: 100,
        divisions: 5,
        labels: RangeLabels(
          _currentRangeValues.start.round().toString(),
          _currentRangeValues.end.round().toString(),
        ),
        onChanged: (RangeValues values) {
          setState(() {
            _currentRangeValues = values;
          });
        },
      ),
    );
  }
}
