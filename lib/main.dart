import 'package:flutter/material.dart';
import 'models/task.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<TaskData>(
        create: (context) => TaskData(),
        child: TasksScreen(),
      ),
    );
  }
}
