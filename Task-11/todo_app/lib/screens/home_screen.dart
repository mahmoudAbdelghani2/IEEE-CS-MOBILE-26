// ignore_for_file: avoid_print, strict_top_level_inference, use_build_context_synchronously

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/cubit.dart';
import 'package:todo_app/cubit/states.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final appCubit = AppCubit.get(context);
          return Scaffold(
            key: _scaffoldKey,
            backgroundColor: const Color.fromRGBO(169, 186, 171, 1),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                if (isBottomSheetShow) {
                  if (formKey.currentState != null &&
                      formKey.currentState!.validate()) {
                    try {
                      await appCubit.insertToDatabase(
                        title: titleController.text,
                        time: timeController.text,
                        date: dateController.text,
                        status: "new",
                      );

                      titleController.clear();
                      timeController.clear();
                      dateController.clear();

                      Navigator.pop(context);

                      setState(() {
                        isBottomSheetShow = false;
                      });
                    } catch (error) {
                      print(
                        "================ Error Inserting Data: $error ==============",
                      );
                    }
                  } else {
                    print("================ Validation Failed! ==============");
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
                                  controller: timeController,
                                  labelText: 'Task Time',
                                  icon: Icons.timer_rounded,
                                  onTap: () {
                                    showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    ).then((value) {
                                      timeController.text = value!.format(
                                        context,
                                      );
                                    });
                                  },
                                ),
                                SizedBox(height: 10),
                                defaultFormField(
                                  controller: dateController,
                                  labelText: 'Task Date',
                                  icon: Icons.date_range,
                                  onTap: () {
                                    showDatePicker(
                                      context: context,
                                      firstDate: DateTime.now(),
                                      initialDate: DateTime.now(),
                                      lastDate: DateTime.parse('3119-05-09'),
                                    ).then((value) {
                                      dateController.text = DateFormat.yMMMd()
                                          .format(value!);
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
              children: appCubit.screens,
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
        },
      ),
    );
  }
}
