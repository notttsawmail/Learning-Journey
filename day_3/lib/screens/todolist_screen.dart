import 'package:day_3/screens/tododetail_screen.dart';
import 'package:flutter/material.dart';

class TodolistScreen extends StatefulWidget {
  const TodolistScreen({super.key});

  @override
  State<TodolistScreen> createState() => _TodolistScreen();
}

class _TodolistScreen extends State<TodolistScreen> {
  String textValue = '';

  void handleTodo(String value) {
    setState(() {
      textValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Everyday Todo',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Welcome to the testing part'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return TododetailScreen(onChanged: handleTodo);
              },
            ));
          },
          icon: Icon(Icons.add),
          label: Text('Add Task'),
        ),
      ),
    );
  }
}
