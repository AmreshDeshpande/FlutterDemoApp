import 'package:flutter/material.dart';
import 'package:i_am_rich/screens/todolist/AddTaskSheet.dart';
import 'package:i_am_rich/screens/todolist/TaskData.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskSheet());
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'TODO LIST',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  '${Provider.of<TaskData>(context).count} Tasks',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(task.name, task.isDone, (checkBoxState) {
              taskData.updateTask(task);
            }, () {
              taskData.deleteTask(task);
            });
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function checkBoxCallback;
  final Function longPressCallback;

  TaskTile(this.taskName, this.isChecked, this.checkBoxCallback,
      this.longPressCallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Theme(
        child: Checkbox(
          value: isChecked,
          onChanged: checkBoxCallback,
        ),
        data: ThemeData(
            accentColor: Colors.black, unselectedWidgetColor: Colors.black54),
      ),
      onLongPress: longPressCallback,
    );
  }
}
