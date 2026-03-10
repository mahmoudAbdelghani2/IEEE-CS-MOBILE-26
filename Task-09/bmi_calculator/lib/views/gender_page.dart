import 'package:bmi_calculator/widgets/appbar_row_widget.dart';
import 'package:bmi_calculator/widgets/button_sel_gender_widget.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  int selectedGender = -1;
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
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                "Please choose your gender",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              GenderWidget(
                gender: "Male",
                img: "images/boy.jpg",
                colorTxt: Color(0XFF519234),
                colorBackground: Color(0XFFF0F8EC),
                func: () {
                  setState(() {
                    selectedGender = 0;
                  });
                },
                selectedGender: selectedGender,
                border: selectedGender == 0
                    ? Border.all(width: 5, color: Colors.grey)
                    : Border.all(width: 0),
              ),
              SizedBox(height: 20),
              GenderWidget(
                selectedGender: selectedGender,
                gender: "Female",
                img: "images/girl.jpg",
                colorTxt: Color(0XFFCE922A),
                colorBackground: Color(0XFFFBF6EE),
                func: () {
                  setState(() {
                    selectedGender = 1;
                  });
                },
                border: selectedGender == 1
                    ? Border.all(width: 5, color: Colors.grey)
                    : Border.all(width: 0),
              ),
              SizedBox(height: 120),
              ButtonWidget(
                txt: "Continue",
                selectedGender: selectedGender,
                gender: selectedGender == 1 ? "Female" : "Male",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
