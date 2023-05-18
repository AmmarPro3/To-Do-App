import 'dart:async';
import 'package:flutter/material.dart';
import 'package:to_do_test/screens/tasks_screen.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({Key? key}) : super(key: key);

  @override
  State<SplahScreen> createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  @override
  void initState() {
    super.initState();
    StartSplashScreen();
  }

  void StartSplashScreen() {
    Timer(
        const Duration(milliseconds: 1800),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => TasksScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Divider(
                height: 70,
              ),
              Text(
                'To Do App!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Divider(
                height: 130,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.lightBlueAccent,
              ),
              Divider(
                height: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
