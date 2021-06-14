import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    this.onPressed,
    this.icon,
  });

  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      fillColor: kRoundIconButtonFillColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: kRoundIconButtonWidth,
        height: kRoundIconButtonHeight,
      ),
      elevation: kRoundIconButtonElevation,
    );
  }
}
