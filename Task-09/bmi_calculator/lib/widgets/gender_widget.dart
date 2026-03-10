import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    super.key,
    required this.gender,
    required this.img,
    required this.colorTxt,
    required this.colorBackground,
    required this.func,
    required this.selectedGender,
    required this.border,
  });
  final String gender;
  final int selectedGender;
  final String img;
  final Color colorTxt;
  final Color colorBackground;
  final Function() func;
  final Border border;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          border: border,
          color: colorBackground,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              gender,
              style: TextStyle(
                color: colorTxt,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(backgroundImage: AssetImage(img), radius: 65),
          ],
        ),
      ),
    );
  }
}
