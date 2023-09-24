import 'package:dio/dio.dart';
import 'package:todo/constants.dart';
import 'package:todo/models/todo.dart';

class TodoRepository {
  final Dio _dio = Dio();

  String _apiUrl([String path = ""]) => Constants.apiBaseUrl + path;

  Future<List<TodoItem>> fetchTodoList() => _dio.get(_apiUrl()).then((value) =>
      (value.data as List).map((e) => TodoItem.fromJson(e)).toList());
}
