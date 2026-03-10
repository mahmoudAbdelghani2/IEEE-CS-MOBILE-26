// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';

class PlusOrMin extends StatefulWidget {
  const PlusOrMin({
    super.key,
    required this.plusOrMinus,
    required this.onPressed,
  });

  final String plusOrMinus;
  final VoidCallback onPressed;
  @override
  _PlusOrMinState createState() => _PlusOrMinState();
}

class _PlusOrMinState extends State<PlusOrMin> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 45,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.all(3),
          backgroundColor: Colors.white,
        ),
        child: Text(
          widget.plusOrMinus,
          style: TextStyle(
            color: Color(0XFF9D6F1F),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
