
import 'dart:math';

class Calculatorbmi {
  final int height;
  final int weight;
  double _result =0;

  Calculatorbmi({required this.height, required this.weight});

  String calculatebmi() {
    _result = weight / pow((height / 100), 2);
    return _result.toStringAsFixed(1);
  }

  getvalue() {
    if (_result >= 25.00) {
      return "OVERWEIGHT";
    }
    else if (_result > 18.5) {
      return "NORMAL";
    }
    else {
      return "UNDERWEIGHT";
    }
  }

  interpretatevalue() {
    if (_result >= 25) {
      return "You have higher than normal body weight. Try to exercise more.";
    }
    else if (_result > 18.5) {
      return "You have normal body weight. Good job!";
    }
    else {
      return "You have lower than normal body weight. You can eat a bit more";
    }
  }


}
