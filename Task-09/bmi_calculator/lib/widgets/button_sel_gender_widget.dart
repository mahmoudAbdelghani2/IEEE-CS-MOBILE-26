import 'package:bmi_calculator/views/bmi_calc_page.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    required this.txt,
    required this.gender,
    required this.selectedGender,
  });
  final String txt;
  final String gender;
  final int selectedGender;
  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          widget.selectedGender != -1
              ? Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIPage(gender: widget.gender),
                  ),
                )
              : null;
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.all(10),
          backgroundColor: Color(0xFF65B741),
        ),
        child: Text(
          widget.txt,
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
