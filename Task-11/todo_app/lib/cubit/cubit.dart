// ignore_for_file: strict_top_level_inference

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/cubit/states.dart';
import 'package:todo_app/screens/archive_screen.dart';
import 'package:todo_app/screens/done_screen.dart';
import 'package:todo_app/screens/tasks_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  bool isBottomSheetShow = false;
  List<Map> tasks = [];
  List<Map> doneTasks = [];
  List<Map> archiveTasks = [];

  List<Widget> get screens => [
    const TaskScreen(),
    const ArchiveScreen(),
    const DoneScreen(),
  ];

  late Database database;

  void createDatabase() async {
    database = await openDatabase(
      'tasks.db',
      version: 1,
      onCreate: (database, version) {
        database.execute(
          'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, time TEXT, date TEXT, status TEXT)',
        );
      },
      onOpen: (database) {
        getDataFromDatabase(database);
      },
    );
  }

  insertToDatabase({
    required String title,
    required String time,
    required String date,
    required String status,
  }) async {
    await database.transaction((txn) {
      return txn
          .rawInsert(
            'INSERT INTO tasks (title, time, date, status) VALUES("$title", "$time", "$date", "$status")',
          )
          .then((value) {
            getDataFromDatabase(database);
            emit(AppInsertDatabaseSuccessState());
          })
          .catchError((error) {
            emit(AppInsertDatabaseErrorState(error.toString()));
          });
    });
  }

  void getDataFromDatabase(database) async {
    tasks.clear();
    doneTasks.clear();
    archiveTasks.clear();

    await database.rawQuery('SELECT * FROM tasks').then((value) {
      value.forEach((e) {
        if (e['status'] == 'done') {
          doneTasks.add(e);
        } else if (e['status'] == 'archive') {
          archiveTasks.add(e);
        } else {
          tasks.add(e);
        }
      });
    });
    emit(AppGetDatabaseSuccessState());
  }

  void deleteFromDatabase(int id) async {
    await database.rawDelete('DELETE FROM tasks WHERE id = ?', [id]).then((
      value,
    ) {
      getDataFromDatabase(database);
    });
  }

  void updateDatabase(String status, int id) async {
    await database
        .rawUpdate('UPDATE tasks SET status = ? WHERE id = ?', [status, id])
        .then((value) {
          getDataFromDatabase(database);
        });
  }
}
