import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class HelloListTile extends StatelessWidget {
  const HelloListTile({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Hello, 7ambola",
        style: TextStyle(
          fontSize: 16,
          color: AppColors.secondryTxtColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        "Good morning!",
        style: TextStyle(
          fontSize: 20,
          color: AppColors.primaryTxtColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
        child: SizedBox(
          height: 60,
          width: 60,
          child: Image.asset("images/boy.jpg", fit: BoxFit.cover),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(15),
            ),
            height: 50,
            width: 50,
            child: Icon(Icons.notifications_outlined),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(15),
            ),
            height: 50,
            width: 50,
            child: Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
    );
  }
}
