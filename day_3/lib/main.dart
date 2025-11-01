import 'package:day_3/screens/todolist_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purpleAccent, brightness: Brightness.dark),
        textTheme: TextTheme(
          displayMedium: TextStyle(
            fontSize: 20,
          ),
          titleLarge: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: TodolistScreen(),
    );
  }
}
