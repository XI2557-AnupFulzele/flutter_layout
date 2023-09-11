import 'package:flutter/material.dart';

class CustomeSwitchButton extends StatefulWidget {
  const CustomeSwitchButton({super.key});

  @override
  State<CustomeSwitchButton> createState() => _CustomeSwitchButtonState();
}

class _CustomeSwitchButtonState extends State<CustomeSwitchButton> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.grey,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
