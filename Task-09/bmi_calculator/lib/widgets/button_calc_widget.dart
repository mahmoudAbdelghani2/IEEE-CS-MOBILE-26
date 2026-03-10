// ignore_for_file: curly_braces_in_flow_control_structures, library_private_types_in_public_api

import 'dart:ui';

import 'package:flutter/material.dart';

class CalcBIMButton extends StatefulWidget {
  const CalcBIMButton({
    super.key,
    required this.weight,
    required this.height,
    required this.age,
    required this.gender,
  });
  final int weight;
  final int height;
  final int age;
  final String gender;

  @override
  _CalcBIMButtonState createState() => _CalcBIMButtonState();
}

class _CalcBIMButtonState extends State<CalcBIMButton> {
  Map<String, dynamic> getBMIDetails(double bmi) {
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

  String getHealthyWeightRange(int height) {
    double heightInMeters = height / 100;
    double minWeight = 18.5 * (heightInMeters * heightInMeters);
    double maxWeight = 24.9 * (heightInMeters * heightInMeters);

    return "${minWeight.toStringAsFixed(1)} kg - ${maxWeight.toStringAsFixed(1)} kg";
  }

  double calculateBMIRaw() {
    double heightInMeters = widget.height / 100;
    return widget.weight / (heightInMeters * heightInMeters);
  }

  void showAlertDialog(BuildContext context) {
    double bmiValue = calculateBMIRaw();
    var details = getBMIDetails(bmiValue);

    showDialog(
      context: context,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: AlertDialog(
            insetPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            backgroundColor: const Color(0XFFF9FBF7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            content: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Your BMI:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    bmiValue.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: details['color'],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      AnimatedAlign(
                        duration: const Duration(seconds: 1),
                        curve: Curves.elasticOut,
                        alignment: Alignment(details['align'], 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: details['color'],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                details['label'],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: details['color'],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: List.generate(24, (index) {
                          Color barColor;
                          if (index < 6) {
                            barColor = Color(0XFF84CDEE);
                          } else if (index < 12)
                            barColor = Color(0XFF78B060);
                          else if (index < 18)
                            barColor = Color(0XFFFFDF32);
                          else
                            barColor = Color(0XFFF5554A);

                          return Expanded(
                            child: Container(
                              height: 20,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 1.5,
                              ),
                              decoration: BoxDecoration(
                                color: barColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(thickness: 1),
                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildInfoItem("${widget.weight} kg", "Weight"),
                      SizedBox(width: 15),
                      _buildInfoItem("${widget.height} cm", "Height"),
                      SizedBox(width: 15),
                      _buildInfoItem("${widget.age}", "Age"),
                      SizedBox(width: 15),
                      _buildInfoItem(widget.gender, "Gender"),
                      SizedBox(width: 15),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Healthy weight for the height:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    getHealthyWeightRange(widget.height),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF519234),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF65B741),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45),
                        ),
                        elevation: 5,
                      ),
                      child: const Text(
                        "Close",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildInfoItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF65B741),
          ),
        ),
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => showAlertDialog(context),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          backgroundColor: const Color(0xFF65B741),
        ),
        child: const Text(
          "Calculate",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
