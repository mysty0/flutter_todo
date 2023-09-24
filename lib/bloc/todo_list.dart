import 'package:bloc/bloc.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/repositories/todo.dart';

import '../models/todo.dart';

part 'todo_list.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required List<TodoItem> items,
    required TodoItem? recentlyDeleted,
  }) = _TodoState;
}

class TodoListCubit extends Cubit<TodoState> {
  final TodoRepository _apiRepository;

  TodoListCubit(this._apiRepository)
      : super(const TodoState(items: [], recentlyDeleted: null));

  void _emitNewList(List<TodoItem> items) {
    emit(TodoState(items: items, recentlyDeleted: state.recentlyDeleted));
  }

  Future<void> refresh() {
    return _apiRepository.fetchTodoList().then(_emitNewList);
  }

  void update(TodoItem item) {
    _emitNewList(state.items.map((e) => e.url == item.url ? item : e).toList());
    _apiRepository.updateItem(
      item.url,
      TodoUpdateRequest(
        title: item.title,
        completed: item.completed,
        order: item.order,
      ),
    );
  }
}
