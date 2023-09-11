import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';
import 'package:flutter_layout/utils/multiSelect_button.dart';
import 'package:flutter_layout/utils/postmate.dart';
import 'package:flutter_layout/utils/radio_component.dart';
import 'package:flutter_layout/utils/range_slider.dart';

class CustomeSideNavigation extends StatelessWidget {
  const CustomeSideNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "sort",
                style: titleStyle,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const RadioComponent(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Price Range",
                style: titleStyle,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const MultiSelectButton(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "From Postmates",
                style: titleStyle,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          PostmateListView(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Max Delivery Fee",
                style: titleStyle,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomeRangeSlider(),
          const SizedBox(
            height: 10,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       "Dietary",
          //       style: titleStyle,
          //     ),
          //     IconButton(
          //         onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
          //   ],
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // const MultiSelectTextButton()
        ],
      ),
    );
  }
}
