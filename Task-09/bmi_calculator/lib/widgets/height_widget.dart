// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';

class HeightWidget extends StatefulWidget {
  HeightWidget({super.key, required this.height, required this.onChanged});

  int height;
  final ValueChanged<int> onChanged;

  @override
  _HeightWidgetState createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0XFFFBF6EE),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Height (cm)",
            style: TextStyle(
              color: Color(0XFFACACAC),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${widget.height}",
            style: const TextStyle(
              color: Color(0XFFCE922A),
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Icon(Icons.arrow_drop_down, color: Color(0xFFCE922A), size: 30),
          SizedBox(
            height: 100,
            child: RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView.useDelegate(
                itemExtent: 20,
                physics: const FixedExtentScrollPhysics(),
                onSelectedItemChanged: (index) {
                  setState(() {
                    widget.height = index;
                  });
                  widget.onChanged(index);
                },
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 301,
                  builder: (context, index) {
                    bool isMajor = index % 5 == 0;
                    return RotatedBox(
                      quarterTurns: 1,
                      child: Center(
                        child: Container(
                          width: 3,
                          height: isMajor ? 50 : 25,
                          color: isMajor
                              ? const Color(0XFFCE922A)
                              : const Color(0xFFC4C4C4),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
