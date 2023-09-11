import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';
import 'package:flutter_layout/horizontal_List_View/horizontalListView.dart';
import 'package:flutter_layout/pages/AppBar/mobile_appBar.dart';
import 'package:flutter_layout/pages/sideNavigation/custome_side_navigation.dart';
import 'package:flutter_layout/utils/card_list.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MobileAppBar(),
          const SizedBox(
            height: 10,
          ),
          const HorizontalListView(),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "80 Stores",
                  style: navHaderStyle,
                ),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return const SizedBox(
                          height: 800,
                          child: SingleChildScrollView(
                              child: CustomeSideNavigation()),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: containerBgColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Filter",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.sort,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const CardList(
                height: 184,
                width: 380,
              );
            },
          ))
        ],
      ),
    );
  }
}
