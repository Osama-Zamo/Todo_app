import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasksList = [
    Task(
      title: 'Buy Milk',
    ),
    Task(
      title: 'Buy Eggs',
    ),
    Task(
      title: 'Buy Detergent',
    ),
  ];

  void addTask(String title) {
    final task = Task(title: title);
    tasksList.add(task);
    notifyListeners();
  }

  void updateTask(int index) {
    tasksList[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    tasksList.remove(tasksList[index]);
    notifyListeners();
  }
}
