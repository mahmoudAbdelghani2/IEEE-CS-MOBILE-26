// ignore_for_file: library_private_types_in_public_api

import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryContainerWidget extends StatefulWidget {
  const CategoryContainerWidget({
    super.key,
    required this.onTap,
    required this.txt,
    required this.category,
  });
  final GestureTapCallback onTap;
  final String txt;
  final String category;

  @override
  State<CategoryContainerWidget> createState() =>
      _CategoryContainerWidgetState();
}

class _CategoryContainerWidgetState extends State<CategoryContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(left: 8),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        height: 50,
        decoration: BoxDecoration(
          color: widget.txt != widget.category
              ? AppColors.greyColor
              : AppColors.orangeColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          widget.txt,
          style: TextStyle(
            color: AppColors.primaryTxtColor,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
