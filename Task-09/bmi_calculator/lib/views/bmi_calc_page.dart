// ignore_for_file: deprecated_member_use, library_private_types_in_public_api

import 'package:bmi_calculator/widgets/appbar_row_widget.dart';
import 'package:bmi_calculator/widgets/button_calc_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:bmi_calculator/widgets/weight_age_container_widget.dart';
import 'package:flutter/material.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({super.key, required this.gender});
  final String gender;
  @override
  _BMIPageState createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  int weight = 0;
  int age = 0;
  int height = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: AppBarRowWidget(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  "Please Modify the values",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WightAgeContainer(
                      txt: 'Weight (kg)',
                      val: weight,
                      onIncrement: () => setState(() => weight++),
                      onDecrement: () =>
                          setState(() => weight > 0 ? weight-- : weight),

                      onChanged: (val) => setState(() {
                        weight = val;
                      }),
                    ),

                    WightAgeContainer(
                      txt: 'Age',
                      val: age,
                      onIncrement: () => setState(() => age++),
                      onDecrement: () => setState(() => age > 0 ? age-- : age),
                      onChanged: (val) => setState(() {
                        age = val;
                      }),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                HeightWidget(
                  height: height,
                  onChanged: (val) {
                    setState(() {
                      height = val;
                    });
                  },
                ),
                SizedBox(height: 70),
                CalcBIMButton(
                  weight: weight,
                  height: height,
                  age: age,
                  gender: widget.gender,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
