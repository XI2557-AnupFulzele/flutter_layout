import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';

class MultiSelectTextButton extends StatefulWidget {
  const MultiSelectTextButton({super.key});

  @override
  State<MultiSelectTextButton> createState() => _MultiSelectTextButtonState();
}

class _MultiSelectTextButtonState extends State<MultiSelectTextButton> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15,
      runSpacing: 20,
      children: [
        Container(
          width: 120,
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
                  "Vegetarian",
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
                  'Vegan',
                  style: headeStyle,
                )
              ],
            ),
          ),
        ),
        Container(
          width: 120,
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
                  'Gluten-free',
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
                  'Halal',
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
