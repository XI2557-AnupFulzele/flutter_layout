import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';
import 'package:flutter_layout/horizontal_List_View/horizontalListView.dart';
import 'package:flutter_layout/pages/AppBar/tablet_appBar.dart';
import 'package:flutter_layout/pages/sideNavigation/custome_side_navigation.dart';
import 'package:flutter_layout/utils/card_list.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});
  final String S = '\$';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const TabletAppBar(),
        const SizedBox(
          height: 10,
        ),
        const HorizontalListView(),
        const Divider(),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "80 Stores",
                          style: navHaderStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF1F5F9),
                          ),
                          child: Text(
                            "Clear All",
                            style: headeStyle,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomeSideNavigation(),
                    ],
                  ))),
              Expanded(
                  flex: 4,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 1.1),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const CardList(
                        height: 180,
                        width: 270,
                      );
                    },
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
