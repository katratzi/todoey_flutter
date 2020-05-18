import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  TasksTile({this.taskTitle, this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
