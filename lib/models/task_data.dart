import 'package:flutter/widgets.dart';
import 'dart:collection';
import 'task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [

  ];

  UnmodifiableListView<Task> get tasks {

    return UnmodifiableListView(_tasks);

  }

  void updateTask(Task task)
  {
      task.toggleDone();
      notifyListeners();
  }



  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Task task)
  {
     _tasks.remove(task);
     notifyListeners();
  }


}