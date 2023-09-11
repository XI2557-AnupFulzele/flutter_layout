import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final String buttonText;
  final IconData? icon;
  final Color bgColor;
  final Color? textColor;
  final Color? iconColor;
  final double padding;
  const CustomeButton(
      {super.key,
      required this.buttonText,
      this.icon,
      required this.bgColor,
      this.textColor,
      this.iconColor,
      required this.padding});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: bgColor),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          children: [
            if (icon != null) Icon(icon, color: iconColor),
            if (icon != null)
              const SizedBox(
                  width: 10), // Add some spacing between icon and text
            Text(
              buttonText,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
