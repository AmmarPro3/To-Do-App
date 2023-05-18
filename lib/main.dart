import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_test/screens/splash_screen.dart';
import 'screens/tasks_screen.dart';
import 'package:to_do_test/models/task_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: SplahScreen(),
      ),
    );
  }
}