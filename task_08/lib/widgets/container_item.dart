import 'package:flutter/material.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({super.key, required this.str, required this.icn});
  final String str;
  final IconData icn;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 240, 244),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 120,
      width: 120,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icn, color: Color(0XFF104DB0), size: 50),
            Text(
              str,
              style: TextStyle(
                color: Color(0XFF104DB0),
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
