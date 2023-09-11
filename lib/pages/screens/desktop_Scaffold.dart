import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';
import 'package:flutter_layout/horizontal_List_View/horizontalListView.dart';
import 'package:flutter_layout/pages/AppBar/desktop_appBar.dart';
import 'package:flutter_layout/pages/sideNavigation/custome_side_navigation.dart';
import 'package:flutter_layout/utils/card_list.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const DesktopAppBar(),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "80 Stores",
                              style: navHaderStyle,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
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
                      flex: 5,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, childAspectRatio: 1.75),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return const CardList(
                            height: 130,
                            width: 336,
                          );
                        },
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
