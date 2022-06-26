import 'package:bitcoin_app/screns/widgets/task_tile.dart';
import 'package:flutter/material.dart';

import '../../models/task.dart';

class TaskList extends StatefulWidget {

 final  List<Task> tasks;

  const TaskList({ required this.tasks}) ;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxCallback: (bool? checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
