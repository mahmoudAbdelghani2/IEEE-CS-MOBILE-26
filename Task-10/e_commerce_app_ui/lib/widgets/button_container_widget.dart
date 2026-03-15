import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    super.key,
    required this.str,
    required this.icon,
    required this.color,
  });
  final String str;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      height: 60,
      width: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: color == Colors.white
            ? Border.all(color: Colors.black, width: 2)
            : Border.all(color: AppColors.orangeColor, width: 0),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            color != Colors.white
                ? Icon(icon, color: Colors.white)
                : Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Center(
                      child: Icon(
                        icon,
                        size: 20,
                        color: color == Colors.white
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
            SizedBox(width: 5),
            Text(
              str,
              style: TextStyle(
                color: color == Colors.white ? Colors.black : Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
