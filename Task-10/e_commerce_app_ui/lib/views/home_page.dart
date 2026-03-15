// ignore_for_file: library_private_types_in_public_api

import 'package:e_commerce_app_ui/models/product_model.dart';
import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:e_commerce_app_ui/widgets/container_category_widget.dart';
import 'package:e_commerce_app_ui/widgets/hello_user_listtile_widget.dart';
import 'package:e_commerce_app_ui/widgets/product_widget.dart';
import 'package:e_commerce_app_ui/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentCategory = 0;

  final List<ProductModel> productList = ProductModel.productList;
  @override
  Widget build(BuildContext context) {
    List<ProductModel> filteredProducts = _currentCategory == 0
        ? ProductModel.productList
        : ProductModel.productList
              .where(
                (p) => p.category == ProductModel.categories[_currentCategory],
              )
              .toList();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.backgroungColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 12, right: 12),
          child: Column(
            children: [
              HelloListTile(),
              SizedBox(height: 15),
              SearchWidget(),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      color: AppColors.primaryTxtColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _currentCategory = 0;
                      });
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: AppColors.secondryTxtColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryContainerWidget(
                      onTap: () {
                        setState(() {
                          _currentCategory = 0;
                        });
                      },
                      txt: "All",
                      category: ProductModel.categoriesMap[_currentCategory]!,
                    ),
                    CategoryContainerWidget(
                      onTap: () {
                        setState(() {
                          _currentCategory = 1;
                        });
                      },
                      txt: "Shoes",
                      category: ProductModel.categoriesMap[_currentCategory]!,
                    ),
                    CategoryContainerWidget(
                      onTap: () {
                        setState(() {
                          _currentCategory = 2;
                        });
                      },
                      txt: "Electronics",
                      category: ProductModel.categoriesMap[_currentCategory]!,
                    ),
                    CategoryContainerWidget(
                      onTap: () {
                        setState(() {
                          _currentCategory = 3;
                        });
                      },
                      txt: "Watches",
                      category: ProductModel.categoriesMap[_currentCategory]!,
                    ),
                    CategoryContainerWidget(
                      onTap: () {
                        setState(() {
                          _currentCategory = 4;
                        });
                      },
                      txt: "Fashion",
                      category: ProductModel.categoriesMap[_currentCategory]!,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: filteredProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.70,
                  ),
                  itemBuilder: (context, index) {
                    final product = filteredProducts[index];
                    return ProductCategory(product: product);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
