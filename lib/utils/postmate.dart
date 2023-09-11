import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';
import 'package:flutter_layout/utils/switch_button.dart';

class Item {
  final IconData icon;
  final String title;

  Item(this.icon, this.title);
}

class PostmateListView extends StatelessWidget {
  PostmateListView({super.key});

  final List<Item> postmateList = [
    Item(Icons.coffee, "Deals"),
    Item(Icons.restaurant_menu, "Top Eat"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            dense: true,
            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            leading: Icon(postmateList[index].icon),
            title: Text(
              postmateList[index].title,
              style: headeStyle,
            ),
            trailing: const CustomeSwitchButton(),
          );
        });
  }
}
