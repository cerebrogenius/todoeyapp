import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override

  final bool isChecked;
  final String taskTitle ;
  final Function(bool? value)? checkboxCallback;
  TaskTile({required this.isChecked, required this.taskTitle, this.checkboxCallback});

 // setState(() {
    //   isChecked = checkboxState;
    // });
  @override
  Widget build(BuildContext context) {
    
    
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback));
    
  }
}



