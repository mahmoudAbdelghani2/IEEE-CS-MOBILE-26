// ignore_for_file: unused_element

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

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
