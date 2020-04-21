import 'package:flutter/material.dart';
import 'package:todoiz/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoiz/modules/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return Dismissible(
              background: Container(color: Colors.red,) ,
              key: Key(task.name),
              onDismissed: (direction){
                taskData.removeTask(task);
                },

              child: TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                },
              ),
            );


          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
