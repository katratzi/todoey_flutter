import 'package:flutter/foundation.dart';

class TaskData with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk', isDone: false),
    Task(name: 'buy more milk', isDone: true),
    Task(name: 'learn flutter', isDone: false),
    Task(name: 'one more thing', isDone: false),
  ];
  List<Task> get tasks => _tasks;

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }
}

class Task with ChangeNotifier {
  bool isDone;
  String name;

  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
    notifyListeners();
  }
}
