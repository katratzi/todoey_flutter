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
          final Task task = taskData.tasks[index];
          return TasksTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (isChecked) {
              taskData.updateTask(task);
            },
            longPressCallback: () {
              taskData.remove(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
