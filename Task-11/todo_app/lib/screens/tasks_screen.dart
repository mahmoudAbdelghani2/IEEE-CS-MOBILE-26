import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/cubit.dart';
import 'package:todo_app/cubit/states.dart';
import 'package:todo_app/widgets/reuseable_widgets.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return buildListUi(
          context,
          tasks: AppCubit.get(context).tasks,
          type: 'home',
        );
      },
    );
  }
}
