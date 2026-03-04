import 'package:flutter/material.dart';
import 'package:task_08/widgets/container_item.dart';
import 'package:task_08/widgets/my_listtile.dart';
import 'package:task_08/widgets/row_item.dart';

class DragPage extends StatelessWidget {
  const DragPage({super.key});
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.33,
      maxChildSize: 0.9,
      minChildSize: 0.33,
      builder: (context, controller) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: BoxBorder.all(style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            controller: controller,
            children: [
              ListTileWidget(),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerItem(str: "3h 30min", icn: Icons.av_timer),
                  ContainerItem(str: "Serves 4", icn: Icons.person_2_outlined),
                  ContainerItem(
                    str: "Intermediate",
                    icn: Icons.local_fire_department_outlined,
                  ),
                ],
              ),

              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Ingredients",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.shopping_cart, size: 30, color: Color(0XFF104DB0)),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "For Chicken Dashi",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),

              RowItem(
                quantity: "8 Cups",
                ingredient: "Low sodium chicken broth",
              ),
              RowItem(quantity: "16", ingredient: "Dried Shiitake mushrooms"),
              RowItem(
                quantity: "30 g",
                ingredient: "Kombu (about 10\" square piece)",
              ),
              RowItem(quantity: "20 g", ingredient: "Dried Bonito flakes"),
              SizedBox(height: 10),
              Text(
                "For Tare and Chashu",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),
              RowItem(
                quantity: "1 1/4 Cups",
                ingredient: "Low sodium soy sauce",
              ),
              RowItem(quantity: "1 1/4 Cups", ingredient: "Mirin"),
              RowItem(quantity: "1/2 Cup", ingredient: "Sake"),
              RowItem(quantity: "1 1/2 Cups", ingredient: "Water"),
            ],
          ),
        ),
      ),
    );
  }
}
