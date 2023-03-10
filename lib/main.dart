import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:task_x/models/task_data.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context,) => TaskData(),
      // builder: (context,) => TaskData(),
      child: MaterialApp(
            home: TaskScreen(),
      ),
    );
  }
}
