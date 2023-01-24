import 'package:flutter/material.dart';
import 'package:task_x/Widgets/task_list.dart';
// import 'package:task_x/Widgets/Task_tile.dart';
import 'package:task_x/Screens/add_task_screen.dart';
import 'package:task_x/models/task.dart';
import 'package:provider/provider.dart';
import 'package:task_x/models/task_data.dart';


class TaskScreen extends StatelessWidget {

  Widget buildBottomSheet( BuildContext context ) => Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: const Icon(
          Icons.add,
        ),
        onPressed: ()
        {
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen(),

             // isScrollControlled: true,
           );
        }

      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>
      [
        Container(
          padding: const EdgeInsets.only(top: 80.0 , right: 40, left: 40, ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:    const <Widget>[
               CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 30,
                   child:  Icon(
                       Icons.list,
                       color: Colors.blueGrey,
                       size: 30,
                   ),
               ),
               SizedBox(
                 height: 10,
               ),
               Text('Task-X',
                 style: TextStyle(
                   fontSize: 50,
                   fontWeight: FontWeight.w600,
                   color: Colors.white,
                 ),
               ),
               Text( //'${Provider.of<TaskData>(context,listen: false).taskCount} tasks',
                'Your tasks',
                style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.w600,
                color: Colors.white,
               ),
               ),
               SizedBox(
                 height: 20,
               ),


            ],

          ),
        ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              ),

                child: TasksList(),

                // child: ListView.builder(
                //     padding: const EdgeInsets.all(8),
                //     itemCount: entries.length,
                //     itemBuilder: (BuildContext context, int index) {
                //       return Container(
                //         height: 50,
                //         color: Colors.amber[colorCodes[index]],
                //         child: Center(child: Text('Entry ${entries[index]}')),
                //       );
                //     }
                // ),

            ),
          ),

      ]
      ),


    );
  }
}




