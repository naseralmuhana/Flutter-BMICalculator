import 'package:flutter/material.dart';
import 'screens/input_page.dart';

import 'constants.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        sliderTheme: SliderThemeData(
          activeTrackColor: kSliderActiveTrackColor,
          inactiveTrackColor: kSliderInActiveTrackColor,
          thumbColor: kSliderThumbColor,
          trackHeight: kSliderTrackHeight,
          thumbShape:
              RoundSliderThumbShape(enabledThumbRadius: kSliderThumbSize),
          overlayColor: kSliderOverlayColor,
          overlayShape:
              RoundSliderOverlayShape(overlayRadius: kSliderOverlaySize),
        ),
      ),
    );
  }
}
