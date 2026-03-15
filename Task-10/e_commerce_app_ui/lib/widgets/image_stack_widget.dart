import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    super.key,
    required this.hight,
    required this.width,
    required this.image,
  });
  final double hight;
  final double width;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Container(
          height: hight,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(image, fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.favorite_border, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
