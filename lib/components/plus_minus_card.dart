import 'package:flutter/material.dart';
import 'round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';

class PlusMinusCard extends StatelessWidget {
  PlusMinusCard({
    required this.number,
    required this.onPressedMinus,
    required this.onPressedPlus,
    required this.label,
  });

  final int number;
  final String label;
  final VoidCallback onPressedMinus;
  final VoidCallback onPressedPlus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label.toUpperCase(),
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              number.toString(),
              style: kNumberTextStyle,
            ),
            Visibility(
              visible: label.toUpperCase() == 'WEIGHT' ? true : false,
              child: Text(
                'kg',
                style: kLabelTextStyle,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: onPressedMinus,
            ),
            SizedBox(
              width: 15.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: onPressedPlus,
            ),
          ],
        ),
      ],
    );
  }
}
