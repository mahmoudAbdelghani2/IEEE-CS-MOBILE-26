// import 'package:e_commerce_app_ui/utils/colors.dart';
// import 'package:flutter/material.dart';

// class CategoryRow extends StatefulWidget {
//   const CategoryRow({super.key});

//   @override
//   State<CategoryRow> createState() => _CategoryRowState();
// }

// class _CategoryRowState extends State<CategoryRow> {
//   Map<int, String> categoriesMap = {
//     0: "All",
//     1: "Shoes",
//     2: "Electronics",
//     3: "Watches",
//     4: "Fashion",
//   };
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     _buildContainerCategory(
//                       onTap: () {
//                         setState(() {
//                           currentCategory = 0;
//                         });
//                       },
//                       txt: "All",
//                       category: categoriesMap[currentCategory]!,
//                     ),
//                     _buildContainerCategory(
//                       onTap: () {
//                         setState(() {
//                           currentCategory = 1;
//                         });
//                       },
//                       txt: "Shoes",
//                       category: categoriesMap[currentCategory]!,
//                     ),
//                     _buildContainerCategory(
//                       onTap: () {
//                         setState(() {
//                           currentCategory = 2;
//                         });
//                       },
//                       txt: "Electronics",
//                       category: categoriesMap[currentCategory]!,
//                     ),
//                     _buildContainerCategory(
//                       onTap: () {
//                         setState(() {
//                           currentCategory = 3;
//                         });
//                       },
//                       txt: "Watches",
//                       category: categoriesMap[currentCategory]!,
//                     ),
//                     _buildContainerCategory(
//                       onTap: () {
//                         setState(() {
//                           currentCategory = 4;
//                         });
//                       },
//                       txt: "Fashion",
//                       category: categoriesMap[currentCategory]!,
//                     ),
//                   ],
//                 ),
//               );
//   }
// }

// Widget _buildContainerCategory({
//   required GestureTapCallback onTap,
//   required String txt,
//   required String category,
// }) {
//   return GestureDetector(
//     onTap: onTap,
//     child: Container(
//       margin: EdgeInsets.only(left: 8),
//       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
//       height: 50,
//       decoration: BoxDecoration(
//         color: txt != category ? AppColors.greyColor : AppColors.orangeColor,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Text(
//         txt,
//         style: TextStyle(
//           color: AppColors.primaryTxtColor,
//           fontSize: 20,
//           fontWeight: FontWeight.w400,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ),
//   );
// }
