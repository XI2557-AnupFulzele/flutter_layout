import 'package:flutter/material.dart';
import 'package:flutter_layout/constant/constant.dart';
import 'package:flutter_layout/utils/custome_Text_feild.dart';
import 'package:flutter_layout/utils/custome_button.dart';
import 'package:flutter_layout/utils/location.dart';
import 'package:flutter_layout/utils/toggle_swtich_container.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            const Icon(Icons.menu),
            const SizedBox(
              width: 10,
            ),
            Text(
              "PostMates",
              style: logoStyle,
            )
          ]),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ToggleSwitchContainer(),
              SizedBox(
                width: 10,
              ),
              Location(),
              SizedBox(
                width: 10,
              ),
              CustomeTextFeild(
                width: 300,
              )
            ],
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomeButton(
                    buttonText: "Cart.0",
                    bgColor: Color(0xFF6B7406),
                    textColor: Colors.white,
                    icon: Icons.shopping_cart,
                    iconColor: Colors.white,
                    padding: 10),
                SizedBox(
                  width: 10,
                ),
                CustomeButton(
                    buttonText: "login",
                    bgColor: containerBgColor,
                    textColor: Colors.black,
                    icon: Icons.person,
                    iconColor: Colors.black,
                    padding: 10),
                SizedBox(
                  width: 10,
                ),
                CustomeButton(
                    buttonText: "logout",
                    bgColor: containerBgColor,
                    textColor: Colors.black,
                    padding: 10),
              ]),
        ],
      ),
    );
  }
}
