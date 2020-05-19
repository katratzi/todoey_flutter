import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TasksTile(
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (isChecked) {
              // taskData.tasks[index].toggleDone();
            },
          );
        },
        itemCount: taskData.tasks.length,
      );
    });
  }
}
