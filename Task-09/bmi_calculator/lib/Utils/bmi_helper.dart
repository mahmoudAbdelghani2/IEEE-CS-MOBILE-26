import 'package:flutter/material.dart';

class BMIHelper {
  static Map<String, dynamic> getBMIDetails(double bmi) {
    if (bmi < 18.5) {
      return {"label": "Underweight", "color": Colors.lightBlue, "align": -0.8};
    } else if (bmi < 25) {
      return {
        "label": "Normal",
        "color": const Color(0xFF65B741),
        "align": -0.2,
      };
    } else if (bmi < 30) {
      return {
        "label": "Overweight",
        "color": Colors.yellow.shade700,
        "align": 0.4,
      };
    } else {
      return {"label": "Obese", "color": Colors.red, "align": 0.9};
    }
  }

  static String getHealthyWeightRange(int height) {
    double heightInMeters = height / 100;
    double minWeight = 18.5 * (heightInMeters * heightInMeters);
    double maxWeight = 24.9 * (heightInMeters * heightInMeters);

    return "${minWeight.toStringAsFixed(1)} kg - ${maxWeight.toStringAsFixed(1)} kg";
  }

  static double calculateBMIRaw({required int weight, required int height}) {
    double heightInMeters = height / 100;
    return weight / (heightInMeters * heightInMeters);
  }
}
