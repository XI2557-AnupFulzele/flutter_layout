import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';

class CardList extends StatelessWidget {
  final double height;
  final double width;
  const CardList({
    super.key,
    required this.height,
    required this.width,
  });
  final String S = '\$';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(
                maxWidth: width,
                maxHeight: height,
              ),
              color: Colors.green,
              child: Image(
                fit: BoxFit.fill,
                image: const AssetImage('images/image_1.jpg'),
                height: height,
                width: width,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Starbuks",
                  style: titleStyle,
                ),
                Text(
                  "4.9",
                  style: numberStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 5,
            ),
            child: Text(
              "3 $S Delivery Fee • 10-20 min",
              style: subtitleStyle,
            ),
          )
        ],
      ),
    );
  }
}
