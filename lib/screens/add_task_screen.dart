import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // store name here in build
    String addTaskName;

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
                  addTaskName = value;
                  print(addTaskName);
                },
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  print('add task $addTaskName');
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(addTaskName);
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
