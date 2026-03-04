import 'package:flutter/material.dart';
import 'package:task_08/views/drag_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/task8.jpg", fit: BoxFit.cover),
            Positioned(
              top: 40,
              right: 10,
              child: Icon(Icons.bookmark_border, size: 30, color: Colors.white),
            ),
            Positioned(
              top: 40,
              right: 50,
              child: Icon(Icons.ios_share, size: 30, color: Colors.white),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: Icon(Icons.arrow_back_ios, size: 30, color: Colors.white),
            ),
            DragPage(),
          ],
        ),
      ),
    );
  }
}
