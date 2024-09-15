import 'package:dio/dio.dart';
import 'package:dio_api_task/core/models/Todo.dart';

class TodoVM {
  final String url = 'https://dummyjson.com/todos';
  Dio dio = Dio();

  Future<List<Todo>> getAllTodos() async {
    try {
      Response res = await dio.get(url);

      if (res.statusCode == 200) {
        final List<dynamic> todosJson = res.data['todos'];
        return todosJson.map((json) => Todo.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load todos');
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }
    Future<List<Todo>> getCompTodos() async {
    try {
      Response res = await dio.get(url);

      if (res.statusCode == 200) {
        final List<dynamic> todosJson = res.data['todos'];
        return todosJson.map((json) => Todo.fromJson(json)).where((todo) => todo.completed == true).toList();
      } else {
        throw Exception('Failed to load todos');
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }
      Future<List<Todo>> getInProgress() async {
    try {
      Response res = await dio.get(url);

      if (res.statusCode == 200) {
        final List<dynamic> todosJson = res.data['todos'];
        return todosJson.map((json) => Todo.fromJson(json)).where((todo) => todo.completed == false).toList();
      } else {
        throw Exception('Failed to load todos');
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }
}
