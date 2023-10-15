import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {required this.title, required this.isChecked, required this.index});
  final String title;
  final bool isChecked;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          Provider.of<TaskData>(context, listen: false).updateTask(index);
        },
      ),
      onLongPress: () {
        Provider.of<TaskData>(context, listen: false).deleteTask(index);
      },
    );
  }
}
