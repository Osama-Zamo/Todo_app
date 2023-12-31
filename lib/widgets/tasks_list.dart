import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: Provider.of<TaskData>(context).tasksList[index].title,
          isChecked: Provider.of<TaskData>(context).tasksList[index].isChecked,
          index: index,
        );
      },
      itemCount: Provider.of<TaskData>(context).tasksList.length,
    );
  }
}
