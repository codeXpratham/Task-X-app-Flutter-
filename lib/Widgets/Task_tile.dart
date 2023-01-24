import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
   bool isChecked;
   final String taskTitle;
   final void Function(bool?)? checkboxCallback;
   VoidCallback longPressCallback;

  TaskTile({required this.isChecked, required this.taskTitle ,required this.checkboxCallback, required this.longPressCallback});
  // void checkboxCallBack



  @override
  Widget build(BuildContext context)
  {
    return ListTile(
      title: Text('$taskTitle',
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueGrey,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}



// class TaskCheckBox  extends StatelessWidget {
//   final bool checkboxState;
//
//   final Function(bool?) toggleCheckboxState;
//   // const TaskCheckBox({Key key, this.checkboxState, this.toggleCheckBoxState}) : super(key: key);
//   TaskCheckBox(this.checkboxState , this.toggleCheckboxState);
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         value: checkboxState,
//         onChanged: toggleCheckboxState,
//     );
//   }
// }



// class TaskCheckBox extends StatefulWidget {
//   @override
//   State<TaskCheckBox> createState() => _TaskCheckBoxState();
// }
//
// class _TaskCheckBoxState extends State<TaskCheckBox> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         value: isChecked,
//         onChanged:
//     );
//   }
// }

// setState(() {
//   // if (isChecked == true) {
//   //   isChecked = false;
//   // }
//   // else {
//   //   isChecked = true;
//   // }
// });