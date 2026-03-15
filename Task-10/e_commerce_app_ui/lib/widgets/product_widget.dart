import 'package:e_commerce_app_ui/models/product_model.dart';
import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:e_commerce_app_ui/views/details_page.dart';
import 'package:e_commerce_app_ui/widgets/image_stack_widget.dart';
import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(product: product),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageStack(hight: 180, width: 180, image: product.image),
          SizedBox(height: 5),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title.length > 11
                        ? "${product.title.substring(0, 11)}..."
                        : product.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryTxtColor,
                    ),
                  ),
                  Text(
                    '${product.price}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryTxtColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: AppColors.orangeColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.shopping_bag),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
