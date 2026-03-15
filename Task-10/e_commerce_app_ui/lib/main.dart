import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:e_commerce_app_ui/views/account_page.dart';
import 'package:e_commerce_app_ui/views/home_page.dart';
import 'package:e_commerce_app_ui/views/shopping_page.dart';
import 'package:e_commerce_app_ui/views/wishlist_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ECommerce());
}

class ECommerce extends StatefulWidget {
  const ECommerce({super.key});

  @override
  State<ECommerce> createState() => _ECommerceState();
}

class _ECommerceState extends State<ECommerce> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    HomePage(),
    ShoppingPage(),
    WishListPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.backgroungColor,
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          currentIndex: _selectedIndex,
          onTap: (value) => setState(() {
            _selectedIndex = value;
          }),
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.bottomNavigationBarColor,
          selectedFontSize: 18,
          unselectedFontSize: 18,
          selectedItemColor: AppColors.orangeColor,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex != 1
                    ? Icons.shopping_bag_outlined
                    : Icons.shopping_bag,
              ),
              label: "Shopping",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex != 2
                    ? Icons.favorite_border_rounded
                    : Icons.favorite_rounded,
              ),
              label: "WishList",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex != 3
                    ? Icons.person_outline_rounded
                    : Icons.person_rounded,
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
