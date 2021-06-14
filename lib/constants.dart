import 'package:flutter/material.dart';

enum Gender { Male, Female }

const int kMinWeight = 20;
const int kMinAGE = 5;
const int kMaxAGE = 100;

const double kBottomContainerHeight = 80.0;
const double kBottomContainerFontSize = 20.0;
const double kBottomContainerLetterSpacing = 1.5;
const double kBottomContainerTopMargin = 10.0;
const double kIconSize = 80.0;
const double kCardBorderRadius = 10.0;
const double kSliderThumbSize = 15.0;
const double kSliderOverlaySize = 25.0;
const double kSliderMinValue = 100.0;
const double kSliderMAxValue = 235.0;
const double kSliderTrackHeight = 2.0;
const double kRoundIconButtonWidth = 56.0;
const double kRoundIconButtonHeight = 56.0;
const double kRoundIconButtonElevation = 6.0;

const Color kPrimaryColor = Color(0xFF0A0D22);
const Color kScaffoldBackgroundColor = Color(0xFF0A0D22);
const Color kBottomContainerColor = Color(0xFFEB1555);
const Color kSliderThumbColor = Color(0xFFEB1555);
const Color kSliderOverlayColor = Color(0x29EB1555);
const Color kSliderActiveTrackColor = Color(0xFFFFFFFF);
const Color kSliderInActiveTrackColor = Color(0xFF8D8E98);
const Color kActiveCardColor = Color(0xFF1D1E33);
const Color kInActiveCardColor = Color(0xFF111428);
const Color kInActiveContentColor = Color(0xFF8D8E98);
const Color kActiveContentColor = Colors.white;
const Color kRoundIconButtonFillColor = Color(0xFF4C4F5E);

const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  color: kActiveContentColor,
  fontWeight: FontWeight.w900,
);
const TextStyle kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: kInActiveContentColor,
  letterSpacing: 1.5,
);
const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
const TextStyle kResultTextStyle = TextStyle(
  fontSize: 22.0,
  color: Color(0xFF20AE67),
  fontWeight: FontWeight.w900,
  letterSpacing: 1.0,
);
const TextStyle kResultNumberTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.w900,
);
const TextStyle kResultDescriptionTextStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.white60,
);
