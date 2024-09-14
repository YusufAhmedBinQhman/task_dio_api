import 'package:flutter/material.dart';

class InprogressTodo extends StatefulWidget {
  const InprogressTodo({super.key});

  @override
  State<InprogressTodo> createState() => _InprogressTodoState();
}

class _InprogressTodoState extends State<InprogressTodo> {
  @override
  Widget build(BuildContext context) {
    return Text("inprogress");
  }
}