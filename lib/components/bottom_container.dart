import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomContainer extends StatelessWidget {
  BottomContainer({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: kBottomContainerFontSize,
              letterSpacing: kBottomContainerLetterSpacing,
            ),
          ),
        ),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: kBottomContainerTopMargin),
      ),
    );
  }
}
