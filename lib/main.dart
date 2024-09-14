import 'package:dio_api_task/core/views/screen/TabBarScreen.dart';
import 'package:dio_api_task/core/views/screen/TodoScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabBarScreen(),
    );
  }
}
