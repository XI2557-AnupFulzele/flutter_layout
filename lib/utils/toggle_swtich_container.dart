import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwitchContainer extends StatelessWidget {
  const ToggleSwitchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(28)),
          color: containerBgColor),
      child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ToggleSwitch(
            minWidth: 90.0,

            cornerRadius: 20.0,
            activeBgColors: const [
              [Colors.white],
              [Colors.white]
            ],
            // activeFgColor: Colors.transparent,
            inactiveBgColor: Colors.transparent,
            // inactiveFgColor: Colors.black,
            initialLabelIndex: 1,
            totalSwitches: 2,
            labels: const ['Delivery', 'Pickup'],
            radiusStyle: true,
            customTextStyles: const [TextStyle(color: Colors.black)],
            onToggle: (index) {
              print('switched to: $index');
            },
          )),
    );
  }
}
