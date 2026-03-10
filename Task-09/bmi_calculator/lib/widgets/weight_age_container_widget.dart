// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:bmi_calculator/widgets/plus_minus_widget.dart';
import 'package:flutter/material.dart';

class WightAgeContainer extends StatefulWidget {
  WightAgeContainer({
    super.key,
    required this.txt,
    required this.val,
    required this.onIncrement,
    required this.onDecrement,
  });
  int val;
  final String txt;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  @override
  _WightAgeContainerState createState() => _WightAgeContainerState();
}

class _WightAgeContainerState extends State<WightAgeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 184,
      decoration: BoxDecoration(
        color: Color(0XFFFBF6EE),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              widget.txt,
              style: TextStyle(
                color: Color(0XFFACACAC),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${widget.val}",
              style: TextStyle(
                color: Color(0XFFCE922A),
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PlusOrMin(plusOrMinus: "-", onPressed: widget.onDecrement),
                  PlusOrMin(plusOrMinus: "+", onPressed: widget.onIncrement),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
