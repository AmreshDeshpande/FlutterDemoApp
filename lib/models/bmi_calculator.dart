import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});

  int height;
  int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getWightRemark() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getAdvice() {
    if (_bmi >= 25)
      return 'You have more than normal weight.Try to excerise more.';
    else if (_bmi > 18.5) {
      return 'You have normal body weight.Good Job!';
    } else {
      return 'You have less than normal weight.You can eat bit more.';
    }
  }
}
