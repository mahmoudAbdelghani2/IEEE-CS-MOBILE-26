import 'package:flutter/material.dart';

class BMIHelper {
  static void showAlertDialog({
    required BuildContext context,
    required GlobalKey<FormState> formKey,
    required String txt,
    required TextEditingController txtController,
    required ValueChanged<int>? onChanged,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return Form(
          key: formKey,
          child: AlertDialog(
            title: !txt.contains("Weight")
                ? const Text("Enter your age in years")
                : const Text("Enter your weight in kg"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final value = int.parse(txtController.text);
                    onChanged?.call(value);
                    txtController.clear();
                    Navigator.pop(context);
                  }
                },
                child: const Text("OK"),
              ),
            ],
            content: TextFormField(
              controller: txtController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a value';
                }
                if (int.tryParse(value) == null ||
                    int.parse(value) <= 0 ||
                    (txt.contains("Age") && int.parse(value) > 150)) {
                  return 'Please enter a valid number';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),

                hintText: "Enter value",
              ),
              onChanged: (value) {
                int? intValue = int.tryParse(value);
                if (formKey.currentState!.validate()) {
                  onChanged!(intValue!);
                }
              },
            ),
          ),
        );
      },
    );
  }

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
