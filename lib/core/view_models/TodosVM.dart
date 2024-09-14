import 'package:dio/dio.dart';
import 'package:dio_api_task/core/models/Todo.dart';

class TodoService {
  final String url = 'https://dummyjson.com/todos';
  Dio dio = Dio();

  Future<List<Todo>> fetchTodos() async {
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> todosJson = response.data['todos'];
        return todosJson.map((json) => Todo.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load todos');
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }
}
