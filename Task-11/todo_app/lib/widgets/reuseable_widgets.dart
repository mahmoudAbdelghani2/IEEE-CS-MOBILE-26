// ignore_for_file: strict_top_level_inference, unused_element

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:todo_app/cubit/cubit.dart';

BottomBarItem bottomBarItem({required IconData icon, required String label}) =>
    BottomBarItem(
      inActiveItem: Icon(icon, color: Colors.white),
      activeItem: Icon(icon, color: Colors.blueAccent),
      itemLabelWidget: Text(label, style: const TextStyle(color: Colors.white)),
    );
Widget defaultFormField({
  required TextEditingController controller,
  required String labelText,
  required IconData icon,
  required GestureTapCallback onTap,
}) => TextFormField(
  controller: controller,
  validator: (value) {
    if (value!.isEmpty) {
      return 'The value can\'t be null';
    }
    return null;
  },
  onTap: onTap,
  decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    labelText: labelText,
    prefixIcon: Icon(icon),
  ),
);

Widget buildListUi(context, {required List<Map> tasks, required String type}) {
  String emptyMessage;

  switch (type) {
    case 'home':
      emptyMessage = 'No tasks yet';
      break;
    case 'archive':
      emptyMessage = 'No archived tasks';
      break;
    case 'done':
      emptyMessage = 'No completed tasks';
      break;
    default:
      emptyMessage = 'No data';
  }

  return Column(
    children: [
      Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width * .95,
          height: MediaQuery.of(context).size.height * .778,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 240, 233, 233),
          ),
          child: ConditionalBuilder(
            condition: tasks.isNotEmpty,
            builder: (BuildContext context) => ListView.separated(
              itemBuilder: (context, index) => listItem(
                donePressed: () {
                  if (tasks[index]['status'] != 'done') {
                    AppCubit.get(
                      context,
                    ).updateDatabase('done', tasks[index]['id']);
                  } else {
                    AppCubit.get(
                      context,
                    ).updateDatabase('new', tasks[index]['id']);
                  }
                },
                deletePressed: () {
                  AppCubit.get(context).deleteFromDatabase(tasks[index]['id']);
                },
                archivePressed: () {
                  if (tasks[index]['status'] == 'archive') {
                    AppCubit.get(
                      context,
                    ).updateDatabase('new', tasks[index]['id']);
                  } else {
                    AppCubit.get(
                      context,
                    ).updateDatabase('archive', tasks[index]['id']);
                  }
                },
                model: tasks[index],
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: tasks.length,
            ),
            fallback: (BuildContext context) => Center(
              child: Text(
                emptyMessage,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget listItem({
  required VoidCallback donePressed,
  required VoidCallback deletePressed,
  required VoidCallback archivePressed,
  required Map model,
}) {
  return Card(
    elevation: 5,
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Container(
      decoration: BoxDecoration(
        color: model['status'] == 'done'
            ? const Color(0x5EB7EAFF)
            : model['status'] == 'archive'
            ? const Color(0x9474B3FF)
            : Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: donePressed,
                icon: Icon(
                  model['status'] == 'done'
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Text(
                  model["title"],
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: archivePressed,
                icon: Icon(
                  model['status'] == 'archive'
                      ? Icons.archive
                      : Icons.archive_outlined,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: deletePressed,
                icon: const Icon(Icons.delete, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.access_time, size: 18),
                  const SizedBox(width: 5),
                  Text(model["time"], style: const TextStyle(fontSize: 14)),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 18),
                  const SizedBox(width: 5),
                  Text(model["date"], style: const TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
