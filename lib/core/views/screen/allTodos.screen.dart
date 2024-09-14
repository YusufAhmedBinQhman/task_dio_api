import 'package:dio_api_task/core/models/Todo.dart';
import 'package:dio_api_task/core/view_models/TodosVM.dart';
import 'package:flutter/material.dart';

class AllTodoScreen extends StatefulWidget {
  @override
  _AllTodoScreenState createState() => _AllTodoScreenState();
}

class _AllTodoScreenState extends State<AllTodoScreen> {
  late Future<List<Todo>> futureTodos;

  @override
  void initState() {
    super.initState();
    futureTodos = TodoService().fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: FutureBuilder<List<Todo>>(
        future: futureTodos,
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
            return Center(child: Text('No todos available'));
          }
        },
      ),
    );
  }
}
