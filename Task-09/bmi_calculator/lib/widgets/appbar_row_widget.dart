import 'package:flutter/material.dart';

class AppBarRowWidget extends StatelessWidget {
  const AppBarRowWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "BMI",
          style: TextStyle(
            color: Color(0XFFFFB534),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 15),
        Text(
          "Calculator ",
          style: TextStyle(
            color: Color(0XFF65B741),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
