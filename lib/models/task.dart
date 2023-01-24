import 'package:flutter/material.dart';

class Task {

     String name;
     bool isDone;
     Task({this.isDone = false,required this.name});

     void toggleDone()
     {
          isDone = !isDone;
     }
}