import 'package:dio_api_task/core/models/Todo.dart';
import 'package:dio_api_task/core/view_models/TodosVM.dart';
import 'package:flutter/material.dart';

class CompletedTodoScreen extends StatefulWidget {
  @override
  _CompletedTodoScreenState createState() => _CompletedTodoScreenState();
}

class _CompletedTodoScreenState extends State<CompletedTodoScreen> {
  late Future<List<Todo>> todosFuture;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Todo>>(
      future: todosFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          final todos = snapshot.data!;
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                  title: Text(todo.todo),
                  subtitle: Text('Completed: ${todo.completed}'),
                  );
            },
          );
        } else {
          return Center(child: Text('No completed todos available.'));
        }
      },
    );
  }
}
