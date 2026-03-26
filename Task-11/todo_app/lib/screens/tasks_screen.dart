// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.88,
            height: MediaQuery.of(context).size.height * 0.788,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.check_box, color: Colors.white),
                ),
                title: Row(
                  children: [
                    Text(
                      "Go to gym",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.archive, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete, color: Colors.white),
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "5:50 PM",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      Text(
                        "jul 24,2024",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
