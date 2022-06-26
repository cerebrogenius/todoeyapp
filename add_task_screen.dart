import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
 
 
 final Function addTaskCallback;

  const AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String? NewTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(children: <Widget>[
          Text(
            'Add Task',
            style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
          ),
          TextField(
            onChanged: (String newText){
           NewTaskTitle = newText;
            },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(focusColor: Colors.lightBlueAccent)),
          TextButton(
              style: TextButton.styleFrom(
                  fixedSize: Size.fromWidth(400),
                  backgroundColor: Colors.lightBlueAccent),
              onPressed: (){
                addTaskCallback(NewTaskTitle);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ))
        ]),
      ),
    );
  }
}
