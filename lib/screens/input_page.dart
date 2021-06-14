import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/bottom_container.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/slider_card.dart';
import 'package:bmi_calculator/components/plus_minus_card.dart';
import 'results_page.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/bmi_calculator_brain.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Selected values from the user.
  Gender? selectedGender;
  int selectedHeight = 180;
  int selectedWeight = 75;
  int selectedAge = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Gender Cards (MALE , FEMALE) => icon_content.dart/reusable_card.dart
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Male Card
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    color: selectedGender == Gender.Male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                      activateColor: selectedGender == Gender.Male
                          ? kActiveContentColor
                          : kInActiveContentColor,
                    ),
                  ),
                ),
                // Female Card
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    color: selectedGender == Gender.Female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                      activateColor: selectedGender == Gender.Female
                          ? kActiveContentColor
                          : kInActiveContentColor,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Slider Card => slider_card.dart/reusable_card.dart
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: SliderCard(
                onChange: (double value) {
                  setState(() {
                    selectedHeight = value.round();
                  });
                },
                height: selectedHeight,
              ),
            ),
          ),

          // Bottom Cards (WEIGHT , AGE) => round_icon_button.dart/plus_minus_card.dart
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: PlusMinusCard(
                      label: 'weight',
                      number: selectedWeight,
                      onPressedMinus: () {
                        setState(() {
                          selectedWeight <= kMinWeight
                              ? selectedWeight -= 0
                              : selectedWeight--;
                        });
                      },
                      onPressedPlus: () {
                        setState(() {
                          selectedWeight++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: PlusMinusCard(
                      label: 'age',
                      number: selectedAge,
                      onPressedMinus: () {
                        setState(() {
                          selectedAge <= kMinAGE
                              ? selectedAge -= 0
                              : selectedAge--;
                        });
                      },
                      onPressedPlus: () {
                        setState(() {
                          selectedAge >= kMaxAGE
                              ? selectedAge += 0
                              : selectedAge++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          // bottom Container
          BottomContainer(
            label: 'Calculate your BMI',
            onTap: () {
              BMICalculatorBrain bmiCalculatorBrain = BMICalculatorBrain(
                  height: selectedHeight.toDouble(),
                  weight: selectedWeight.toDouble());

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    resultNumber: bmiCalculatorBrain.getBMINumberResult(),
                    resultText: bmiCalculatorBrain.getBMITextResult(),
                    resultDescription:
                        bmiCalculatorBrain.getBMIDescriptionResult(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
