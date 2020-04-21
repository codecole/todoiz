import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

 TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});




  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        onChanged: checkboxCallback,

        activeColor: Colors.teal,
        value: isChecked,
      ),
      title: Text(
        taskTitle,
        style: TextStyle(color: isChecked ? Colors.grey:Colors.teal,
        decoration: isChecked? TextDecoration.lineThrough: null),
      ),
      subtitle: Text('Tomorrow 8am'),
    );
  }
}

//class TaskCheckbox extends StatelessWidget {
//
//  final bool checkboxState;
//  final Function toggleCheckboxState;
//  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});
//
//
//  @override
//  Widget build(BuildContext context) {
//    return
//  }
//}

