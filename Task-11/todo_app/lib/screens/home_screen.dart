// ignore_for_file: use_build_context_synchronously

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/archive_screen.dart';
import 'package:todo_app/screens/done_screen.dart';
import 'package:todo_app/screens/tasks_screen.dart';
import 'package:todo_app/widgets/reuseable_widgets.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final NotchBottomBarController _controller = NotchBottomBarController(
    index: 0,
  );
  final PageController _pageController = PageController(initialPage: 0);
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isBottomSheetShow = false;
  List<Widget> screens = [TasksScreen(), ArchiveScreen(), DoneScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color.fromRGBO(169, 186, 171, 1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBottomSheetShow) {
            if (formKey.currentState!.validate()) {
              Navigator.pop(context);
              setState(() {
                isBottomSheetShow = false;
              });
            }
          } else {
            _scaffoldKey.currentState!
                .showBottomSheet((context) {
                  return Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          defaultFormField(
                            controller: titleController,
                            labelText: 'Task Name',
                            icon: Icons.title,
                            onTap: () {},
                          ),
                          SizedBox(height: 10),
                          defaultFormField(
                            controller: titleController,
                            labelText: 'Task Time',
                            icon: Icons.timer_rounded,
                            onTap: () {
                              showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              ).then((value) {
                                timeController.text = value!.format(context);
                              });
                            },
                          ),
                          SizedBox(height: 10),
                          defaultFormField(
                            controller: titleController,
                            labelText: 'Task Date',
                            icon: Icons.date_range,
                            onTap: () {
                              showDatePicker(
                                context: context,
                                firstDate: DateTime.now(),
                                initialDate: DateTime.now(),
                                lastDate: DateTime.parse('3119-05-09'),
                              ).then((value) {
                                dateController.text = DateFormat.yMMMd().format(
                                  value!,
                                );
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                })
                .closed
                .then((value) {
                  setState(() {
                    isBottomSheetShow = false;
                  });
                });
            setState(() {
              isBottomSheetShow = true;
            });
          }
        },
        backgroundColor: Colors.black87,
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.format_list_bulleted, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "All Tasks",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(169, 186, 171, 1),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: screens,
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        color: Colors.grey,
        notchBottomBarController: _controller,
        notchColor: Colors.black87,
        elevation: 4,
        showLabel: true,
        removeMargins: false,
        bottomBarWidth: 500,
        showShadow: false,
        durationInMilliSeconds: 300,
        bottomBarItems: [
          bottomBarItem(icon: Icons.home, label: "Tasks"),
          bottomBarItem(icon: Icons.archive, label: "Archived"),
          bottomBarItem(icon: Icons.check_box, label: "Done"),
        ],
        onTap: (int index) {
          _pageController.jumpToPage(index);
        },
        kIconSize: 24,
        kBottomRadius: 28,
      ),
    );
  }
}
