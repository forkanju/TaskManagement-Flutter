import 'package:flutter/material.dart';
import 'package:flutter_task_management/models/task.dart';
import 'package:provider/provider.dart';
import 'package:flutter_task_management/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  //final task = Task(name: newTaskTitle);
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
