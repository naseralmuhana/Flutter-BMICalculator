import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class SliderCard extends StatelessWidget {
  SliderCard({
    required this.height,
    required this.onChange,
  });

  final int height;
  final Function(double) onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'HEIGHT',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              height.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Slider(
          min: kSliderMinValue,
          max: kSliderMAxValue,
          value: height.toDouble(),
          onChanged: onChange,
        ),
      ],
    );
  }
}
