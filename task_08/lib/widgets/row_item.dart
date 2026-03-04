import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  const RowItem({super.key, required this.quantity, required this.ingredient});
  final String quantity, ingredient;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            quantity,
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ),
        Expanded(
          child: Text(
            ingredient,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
