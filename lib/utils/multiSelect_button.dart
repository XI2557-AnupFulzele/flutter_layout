import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';

class MultiSelectButton extends StatefulWidget {
  const MultiSelectButton({super.key});

  @override
  State<MultiSelectButton> createState() => _MultiSelectButtonState();
}

class _MultiSelectButtonState extends State<MultiSelectButton> {
  String S = '\$';
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 10,
      children: [
        Container(
          width: 80,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: const Color(0xFFCBD5E1)),
            color: const Color(0xFFCBD5E1),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.check, size: 20),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  S,
                  style: headeStyle,
                )
              ],
            ),
          ),
        ),
        Container(
          width: 80,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: const Color(0xFFCBD5E1))),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // const Icon(Icons.check, size: 20),
                // const SizedBox(
                //   width: 5,
                // ),
                Text(
                  '$S$S',
                  style: headeStyle,
                )
              ],
            ),
          ),
        ),
        Container(
          width: 80,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: const Color(0xFFCBD5E1)),
              color: const Color(0xFFCBD5E1)),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.check, size: 20),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '$S$S$S',
                  style: headeStyle,
                )
              ],
            ),
          ),
        ),
        Container(
          width: 80,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: const Color(0xFFCBD5E1))),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // const Icon(Icons.check, size: 20),
                // const SizedBox(
                //   width: 5,
                // ),
                Text(
                  '$S$S$S',
                  style: headeStyle,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
