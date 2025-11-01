import 'package:flutter/material.dart';

class TododetailScreen extends StatefulWidget {
  const TododetailScreen({super.key, required this.onChanged});
  final Function(String) onChanged;

  @override
  State<TododetailScreen> createState() => _TododetailScreen();
}

class _TododetailScreen extends State<TododetailScreen> {
  final TextEditingController _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo-Details',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10),
          //* Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "What's are the things to do today? ",
                  style: Theme.of(context).textTheme.displayMedium!,
                ),
              ),
            ],
          ),

          SizedBox(height: 8),

          //* TextField
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: _todoController,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  labelText: 'Enter your task.'),
            ),
          ),
        ],
      ),
    );
  }
}
