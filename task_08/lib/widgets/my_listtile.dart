import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Homemade Ramen",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
      ),
      subtitle: Text(
        "By Mahmoud Abdelghani",
        style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0XFFFFB001),
            child: Icon(Icons.star, color: Colors.white),
          ),
          SizedBox(width: 10),
          Text(
            "4.5",
            style: TextStyle(
              color: Color(0XFFFFB001),
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
