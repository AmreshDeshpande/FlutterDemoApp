import 'package:flutter/material.dart';
import 'package:i_am_rich/screens/todolist/Task.dart';
import 'package:i_am_rich/screens/todolist/TaskData.dart';
import 'package:provider/provider.dart';

class AddTaskSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
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
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
              Theme(
                data: ThemeData(unselectedWidgetColor: Colors.black),
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newValue) {
                    newTaskTitle = newValue;
                  },
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Consumer<TaskData>(
                builder: (context, taskData, child) {
                  return FlatButton(
                    disabledColor: Colors.black,
                    color: Colors.black,
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      final task = Task(name: newTaskTitle);
                      taskData.addTask(task);
                      Navigator.pop(context);
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
