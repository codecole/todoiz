import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'package:provider/provider.dart';
import 'package:todoiz/modules/task_data.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Todoiz',
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          unselectedWidgetColor: Colors.teal,
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white
          )
        )


        ),
        home: Homepage(),
      ),
    );
  }
}



