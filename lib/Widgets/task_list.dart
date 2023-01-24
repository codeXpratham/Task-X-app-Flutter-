import 'package:flutter/material.dart';
import 'Task_tile.dart';
import 'package:task_x/models/task.dart';
import 'package:provider/provider.dart';
import 'package:task_x/models/task_data.dart';
class TasksList extends StatelessWidget {


  // List<Task> task = [
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index)
        {
          return TaskTile(
              isChecked: Provider.of<TaskData>(context,listen: false).tasks[index].isDone,
              taskTitle: Provider.of<TaskData>(context,listen: false).tasks[index].name,
              checkboxCallback : (bool? checkboxState) {
                // setState(() {
                //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
                Provider.of<TaskData>(context , listen: false).updateTask(Provider.of<TaskData>(context,listen: false).tasks[index]);
              },
              longPressCallback: ()
                  {
                    Provider.of<TaskData>(context , listen: false).deleteTask(Provider.of<TaskData>(context,listen: false).tasks[index]);
                  },
          );
        },
          itemCount: Provider.of<TaskData>(context).taskCount,);
      },
    );
  }
}