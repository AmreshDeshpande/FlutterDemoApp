import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:i_am_rich/screens/todolist/Task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _taskList = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Bread"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_taskList);
  }

  int get count {
    return _taskList.length;
  }

  void addTask(Task task) {
    _taskList.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDoneStatus();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
