import 'package:e_commerce_app_ui/models/product_model.dart';
import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:e_commerce_app_ui/widgets/button_container_widget.dart';
import 'package:e_commerce_app_ui/widgets/image_stack_widget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroungColor,
        title: Text("Details"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppColors.primaryTxtColor,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.share_outlined,
                size: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          height: 60,
          width: 70,
          decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            // size: 30,
            // fontWeight: FontWeight.bold,
            color: Colors.black,
            iconSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageStack(
                hight: 300,
                width: double.infinity,
                image: product.image,
              ),
              SizedBox(height: 15),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryTxtColor,
                        ),
                      ),
                      Text(
                        product.category,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.secondryTxtColor,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "\$${product.price}",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryTxtColor,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Color(0XFFFFC107), size: 30),
                          SizedBox(width: 2),
                          Text(
                            "${product.rating}",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0XFFFFC107),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Selected Size",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryTxtColor,
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      _buildContainerSize(
                        size: "S",
                        color: AppColors.greyColor,
                      ),
                      _buildContainerSize(
                        size: "M",
                        color: AppColors.greyColor,
                      ),
                      _buildContainerSize(
                        size: "L",
                        color: AppColors.greyColor,
                      ),
                      _buildContainerSize(
                        size: "XL",
                        color: AppColors.greyColor,
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildContainerSize(size: "-", color: Colors.white),
                        Text(
                          "1",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        _buildContainerSize(size: "+", color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryTxtColor,
                ),
              ),
              SizedBox(height: 20),
              Text(
                product.description,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.secondryTxtColor,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ButtonContainer(
                    str: 'Add To Cart',
                    icon: Icons.add_outlined,
                    color: Colors.white,
                  ),
                  Spacer(),
                  ButtonContainer(
                    str: 'Buy Now',
                    icon: Icons.shopping_bag_outlined,
                    color: AppColors.orangeColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildContainerSize({required String size, required Color color}) {
  return Container(
    margin: EdgeInsets.only(right: 5),
    height: 45,
    width: 45,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(
      child: Text(
        size,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
