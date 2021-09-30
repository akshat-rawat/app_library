import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    }
    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Dude, your BMI is high af.';
    } else if (_bmi >= 18.5) {
      return 'Your BMI is average bruh!';
    }
    return 'Eat dawg, your BMI is low.';
  }
}
