import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  final Function(String) addTaskCallback;
  AddTaskScreen({this.addTaskCallback});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String addTaskName;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                // autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  print(value);
                  addTaskName = value;
                },
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  print('Add task');
                  widget.addTaskCallback(addTaskName);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
