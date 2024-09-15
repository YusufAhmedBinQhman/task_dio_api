import 'package:dio_api_task/core/models/Todo.dart';
import 'package:dio_api_task/core/view_models/TodosVM.dart';
import 'package:dio_api_task/core/views/components/CustomWidget/Container_Wid.dart';
import 'package:dio_api_task/core/views/components/CustomWidget/Text_wid.dart';
import 'package:flutter/material.dart';

class CompTodo extends StatefulWidget {
  @override
  _CompTodoState createState() => _CompTodoState();
}

class _CompTodoState extends State<CompTodo> {
  late Future<List<Todo>> futureTodos;

  @override
  void initState() {
    super.initState();
    futureTodos = TodoVM().getCompTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWid(Txt: "complete Todos"),
      ),
      body: FutureBuilder<List<Todo>>(
        future: futureTodos,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            }

            final todos = snapshot.data!;
            if (todos.isEmpty) {
              return Center(child: Text("No complete todos available."));
            }

            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ContainerWid(
                  colorW: Colors.green[400],
                  childW: ListTile(
                    title: TextWid(Txt: todo.todo),
                    subtitle: Row(
                      children: [
                        TextWid(Txt: "Completed: ${todo.completed}"),
                        Spacer(),
                        Column(
                          children: [
                            TextWid(Txt: "id: ${todo.id}"),
                            TextWid(Txt: "userId: ${todo.userId}"),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
