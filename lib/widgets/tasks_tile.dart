import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  final String label;
  TasksTile({this.label});

  @override
  _TasksTileState createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;
  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${widget.label}',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: checkboxCallback,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
