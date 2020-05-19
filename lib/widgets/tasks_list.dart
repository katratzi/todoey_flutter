import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  Widget build(BuildContext context) {
// get our tasks from the provider
    final TaskData tasks = Provider.of<TaskData>(context, listen: true);

    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
            taskTitle: tasks.tasks[index].name,
            isChecked: tasks.tasks[index].isDone,
            checkboxCallback: (isChecked) {
              tasks.tasks[index].toggleDone();
            });
      },
      itemCount: tasks.tasks.length,
    );
  }
}
