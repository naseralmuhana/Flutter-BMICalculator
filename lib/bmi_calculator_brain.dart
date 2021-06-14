import 'dart:math';

class BMICalculatorBrain {
  BMICalculatorBrain({required this.height, required this.weight});

  final double height;
  final double weight;

  double _bmi = 0;
  String textResult = '';
  String descriptionResult = '';

  double _heightInMeter() {
    return height / 100.0;
  }

  num _heightSquare() {
    return pow(_heightInMeter(), 2);
  }

  String getBMINumberResult() {
    _bmi = weight / _heightSquare();
    return _bmi.toStringAsFixed(1);
  }

  String getBMITextResult() {
    _bmi > 25
        ? textResult = 'overweight'
        : _bmi > 18.5
            ? textResult = ' normal'
            : textResult = 'underweight';
    return textResult;
  }

  String getBMIDescriptionResult() {
    _bmi > 25
        ? descriptionResult =
            'You have a higher than normal body weight. Try to exercise more.'
        : _bmi > 18.5
            ? descriptionResult = 'You have a normal body weight. Good Job!'
            : descriptionResult =
                'You have a lower than normal body weight. You can eat more.';
    return descriptionResult;
  }
}
