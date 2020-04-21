import 'package:flutter/material.dart';
import 'package:todoiz/widgets/task_list.dart';

import 'package:provider/provider.dart';
import 'package:todoiz/modules/task_data.dart';

class Homepage extends StatelessWidget {



  final taskNameHolder = TextEditingController();

  void clearTextInput(){
    taskNameHolder.clear();
  }
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;


    return Scaffold(
//      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30.0, top: 60.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(

                      backgroundColor: Colors.teal,
                      radius: 30.0,

                      child: Icon(Icons.done_outline, size: 30.0)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todoiz',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text('${Provider.of<TaskData>(context).taskCount} tasks',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 14.0,
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: TaskList(

                ),
              ),
            ),
            Container(

                padding: EdgeInsets.all(16.0),
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add),

                    SizedBox(
                      width:10.0
                    ),
                    Flexible(
                      child: TextField(
                        controller: taskNameHolder,
                        decoration: InputDecoration(
                          hintText: 'write new task',
                        ),
                        onChanged: (newText){
                          newTaskTitle = newText;
                        },
                      ),
                    ),
                    FlatButton(
                      color: Colors.teal,
                      child: Text('Add Task'),
                      onPressed: (){



                        Provider.of<TaskData>(context, listen:false).addTask(newTaskTitle);
//when ever i want to update using provider i need to create a method that handles it to call notify listener

                        clearTextInput();

//
//                        });
                      }
                    )

                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}


