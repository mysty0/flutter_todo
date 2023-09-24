import 'package:bloc/bloc.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/repositories/todo.dart';

import '../models/todo.dart';

part 'todo_list.freezed.dart';

@freezed
class TodoListState with _$TodoListState {
  const factory TodoListState.loading() = TodoListStateLoading;
  const factory TodoListState.data(
      List<TodoItem> items, TodoItem? recentlyDeleted) = TodoListStateData;
  const factory TodoListState.error(String error) = TodoListStateError;
}

class TodoListCubit extends Cubit<TodoListState> {
  final TodoRepository _apiRepository;

  TodoListCubit(this._apiRepository) : super(const TodoListState.loading()) {
    _apiRepository
        .fetchTodoList()
        .then((items) => emit(TodoListState.data(items, null)));
  }
}
