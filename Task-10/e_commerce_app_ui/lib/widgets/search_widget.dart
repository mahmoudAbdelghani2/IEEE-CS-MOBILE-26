import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.search_sharp,
                  color: Color.fromARGB(255, 152, 167, 174),
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "Search",
                  style: TextStyle(
                    color: Color.fromARGB(255, 152, 167, 174),
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 15),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.tune_outlined, size: 30),
        ),
      ],
    );
  }
}
