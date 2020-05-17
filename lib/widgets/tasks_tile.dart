import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final String label;
  TasksTile({this.label});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$label'),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
