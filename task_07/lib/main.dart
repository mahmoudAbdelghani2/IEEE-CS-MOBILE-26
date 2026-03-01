import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Color containerColor = Color(0XFFE6F0FA);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Task 7", style: TextStyle(color: Colors.white)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(Icons.favorite_border_outlined, color: Colors.white),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 120,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 3, style: BorderStyle.solid),
                ),
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 70,
                      color: Color(0XFF4187FF),
                    ),
                    title: Text(
                      "Mahmoud Abdelghani",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Flutter Devolper",
                      style: TextStyle(color: Color(0XFFA9A9AC), fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                padding: EdgeInsets.all(17),
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 3, style: BorderStyle.solid),
                ),
                child: Center(
                  child: Text(
                    "Life is like riding a bicycle. To keep your balance, you must keep moving",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                // height: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 3, style: BorderStyle.solid),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xffFFBE05), size: 24),
                        Icon(Icons.star, color: Color(0xffFFBE05), size: 24),
                        Icon(Icons.star, color: Color(0xffFFBE05), size: 24),
                        Icon(Icons.star, color: Color(0xffFFBE05), size: 24),
                        Icon(
                          Icons.star_half,
                          color: Color(0xffFFBE05),
                          size: 24,
                        ),
                      ],
                    ),
                    // SizedBox(width: 30),
                    Text(
                      "150 Reviews",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(width: 65),
                    Icon(Icons.share, color: Color(0XFF4187FF), size: 24),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                // height: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 3, style: BorderStyle.solid),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.code, size: 40, color: Colors.blue),
                        Text(
                          "EXP:",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "-2 Yrs",
                          style: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.bug_report, size: 40, color: Colors.blue),
                        Text(
                          "BUGS:",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "∞",
                          style: TextStyle(
                            fontSize: 22,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.coffee, size: 40, color: Color(0xff8C6E5F)),
                        Text(
                          "Coffee:",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "∞",
                          style: TextStyle(
                            fontSize: 22,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                //height: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 3, style: BorderStyle.solid),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.track_changes,
                          size: 22,
                          color: Colors.redAccent,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "My Hobbies:",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text("1. Sleeping", style: TextStyle(fontSize: 18)),
                    Text("2. Football", style: TextStyle(fontSize: 18)),
                    Text("3. Sleeping again", style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
