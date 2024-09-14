import 'package:dio_api_task/core/views/screen/allTodos.screen.dart';
import 'package:dio_api_task/core/views/screen/completeScreen.dart';
import 'package:dio_api_task/core/views/screen/inprogress.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Todos'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'All Todos'),
              Tab(text: 'Completed'),
              Tab(text: 'Incomplete'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AllTodoScreen(), // شاشة كل المهام
            Text("Complete"), // CompletedTodoScreen(),  // شاشة المهام المكتملة
            InprogressTodo() // IncompleteTodoScreen(),  // شاشة المهام غير المكتملة
          ],
        ),
      ),
    );
  }
}
