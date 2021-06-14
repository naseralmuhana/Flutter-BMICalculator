import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  IconContent(
      {required this.icon, required this.label, required this.activateColor});

  final IconData icon;
  final String label;
  final Color activateColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
          color: activateColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: activateColor,
            letterSpacing: 1.5,
          ),
        )
      ],
    );
  }
}
