import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';

class CustomeTextFeild extends StatelessWidget {
  final double width;
  const CustomeTextFeild({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: const TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: containerBgColor,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(28)),
                borderSide: BorderSide(width: 0, color: Colors.transparent)),
            hintText: 'Food, groceries, drinks, etc',
            contentPadding: EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
            prefixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Icon(Icons.search),
            )),
      ),
    );
  }
}
