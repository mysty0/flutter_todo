import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:todo/constants.dart';
import 'package:todo/models/todo.dart';

class TodoRepository {
  final Dio _dio = Dio();

  TodoRepository() {
    _dio.interceptors.add(PrettyDioLogger());
  }

  String _apiUrl([String path = ""]) => Constants.apiBaseUrl + path;

  Future<List<TodoItem>> fetchTodoList() => _dio.get(_apiUrl()).then((value) =>
      (value.data as List).map((e) => TodoItem.fromJson(e)).toList());

  Future<TodoItem> updateItem(String url, TodoUpdateRequest req) => _dio
      .patch(url, data: req.toJson())
      .then((value) => TodoItem.fromJson(value.data));

  Future<TodoItem> addItem(TodoCreateRequest req) => _dio
      .post(_apiUrl(), data: req.toJson())
      .then((value) => TodoItem.fromJson(value.data));

  Future<void> deleteAll() => _dio
      .delete(_apiUrl());

  Future<void> deleteItem(String url) => _dio
      .delete(url);
}
