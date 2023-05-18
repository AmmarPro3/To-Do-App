import 'package:flutter/material.dart';
import 'package:to_do_test/models/task.dart';
import 'package:to_do_test/models/task_data.dart';
import 'package:provider/provider.dart';


class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String? newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Tasks",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                textStyle: TextStyle(color: Colors.white),
              ),
              child: Text(
                "Add",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
