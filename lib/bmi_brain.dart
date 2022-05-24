import 'dart:math';

class BMIBrain {
  int weight;
  int height;

  double bmi = 0;

  BMIBrain({
    required this.weight,
    required this.height,
  });

  double calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String getResults() {
    if (calculateBMI() >= 25) {
      return "Overweight";
    } else if (calculateBMI() > 18) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (calculateBMI() >= 25) {
      return "Try to exeercise more";
    } else if (calculateBMI() > 18) {
      return "You have a normal body, good, job!";
    } else {
      return "You should eat a little more";
    }
  }
}
