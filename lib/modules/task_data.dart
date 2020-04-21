import 'package:flutter/foundation.dart';
import 'package:todoiz/modules/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'Go to the gym'),
    Task(name: 'Come home'),
    Task(name: 'Eat breakfast'),
  ];

//unmodifiable List view a list that  you cant modify or change

  //UnmodifiableListView<Task> get tasks {
  //return _tasks;
  //};

  int get taskCount {
    return tasks.length;
  }
//this method was created so we can listen for changes that is made on the homepage
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  //the Task is from the task.dart file while the task is from the  variable created as an input
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void removeTask (Task task){
    tasks.remove(task);
    notifyListeners();
  }

}
