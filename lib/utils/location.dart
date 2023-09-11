import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(28)),
          color: containerBgColor),
      child: const Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
        child: Row(
          children: [
            Icon(Icons.room),
            SizedBox(
              width: 20,
            ),
            Text("New York")
          ],
        ),
      ),
    );
  }
}
