import 'dart:math';

class CalculatorBrain {
  final int? height;
  final int? weight;
  CalculatorBrain({this.height, this.weight});

  double? _bmi;

  String getCalculatedBMI() {
    _bmi = weight! / pow(height! / 100!, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getResultDetails() {
    if (_bmi! >= 25) {
      return 'You have higher than a normal body weight. Try to exercise more!';
    } else if (_bmi! >= 18.5) {
      return 'you have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more!';
    }
  }
}
