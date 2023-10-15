import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Container(
      color: Colors.grey[600],
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(controller.text);
                    Navigator.pop(context);
                  },
                  child: Container(
                    color: Colors.lightBlueAccent,
                    width: 300,
                    height: 50,
                    child: Center(
                        child: Text(
                      'Add',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
