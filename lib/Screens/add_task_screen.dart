import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_x/models/task.dart';
import 'package:task_x/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String newTaskTitle = 'initialised';

    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
        ),
        padding: const EdgeInsets.only(left: 40 , right: 40 , top: 40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  <Widget> [
               const Text(
                   'Add Task',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey,
                   ),
               ),

              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                decoration : InputDecoration(),
                onChanged: (newText)
                {
                   newTaskTitle = newText;
                },

              ),

              TextButton(
                  onPressed: () {
                      print('add onpressed pressed');
                      Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                      Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                    ),

                    child: const Text(
                      'Add Task',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
              ),
            ],
        ),
      ),
    );
  }
}
