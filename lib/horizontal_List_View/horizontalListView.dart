import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => box()));
  }

  Widget box() {
    return Container(
        width: 100,
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(35.0),
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage('images/image_1.jpg'),
                  width: 104.0,
                  height: 74.0,
                ),
              ),
              Text("Some Text", style: headeStyle)
            ],
          ),
        ));
  }
}
