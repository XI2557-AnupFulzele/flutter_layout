import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';

class RadioComponent extends StatefulWidget {
  const RadioComponent({super.key});

  @override
  State<RadioComponent> createState() => _RadioComponentState();
}

class _RadioComponentState extends State<RadioComponent> {
  String? sort;
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RadioListTile(
            dense: true,
            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            title: Text(
              "Picked for you (default)",
              style: headeStyle,
            ),
            value: "default",
            groupValue: sort,
            onChanged: (value) {
              setState(() {
                sort = value.toString();
              });
            }),
        RadioListTile(
            dense: true,
            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            title: Text(
              "Most popular",
              style: headeStyle,
            ),
            value: "Most popular",
            groupValue: sort,
            onChanged: (value) {
              setState(() {
                sort = value.toString();
              });
            }),
        RadioListTile(
            dense: true,
            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            title: Text(
              "Rating",
              style: headeStyle,
            ),
            value: "Rating",
            groupValue: sort,
            onChanged: (value) {
              setState(() {
                sort = value.toString();
              });
            }),
        RadioListTile(
            dense: true,
            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            title: Text(
              "Delivery time",
              style: headeStyle,
            ),
            value: "Delivery time",
            groupValue: sort,
            onChanged: (value) {
              setState(() {
                sort = value.toString();
              });
            }),
      ],
    );
  }
}
