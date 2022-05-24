
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
    bmi = weight / pow(height/100, 2);
    return bmi;
  }
}
