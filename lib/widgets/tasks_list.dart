import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'tasks_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Become ironman'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TasksTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
        TasksTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
        TasksTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
      ],
    );
  }
}
