import "package:bloc/bloc.dart";

import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:todo/extensions/iterable.dart";
import "package:todo/repositories/todo.dart";

import "../models/todo.dart";

part "todo_list.freezed.dart";

enum FilterType { completed, uncompleted }

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required List<TodoItem> items,
    required Set<FilterType> filters,
    required TodoItem? recentlyDeleted,
  }) = _TodoState;
  const TodoState._();

  List<TodoItem> get sortedItems =>
      items.toList()..sort((a, b) => (a.order ?? 0).compareTo(b.order ?? 0));

  List<TodoItem> get filteredItems {
    if (filters.isEmpty) {
      return sortedItems;
    }

    return sortedItems
        .where((item) => item.completed == true
            ? filters.contains(FilterType.completed)
            : filters.contains(FilterType.uncompleted))
        .toList();
  }
}

class TodoListCubit extends Cubit<TodoState> {
  final TodoRepository _apiRepository;

  TodoListCubit(this._apiRepository)
      : super(const TodoState(items: [], recentlyDeleted: null, filters: {}));

  void _emitNewList(List<TodoItem> items) {
    emit(state.copyWith(items: items));
  }

  TodoItem? getById(int id) {
    return state.items.firstWhereOrNull((e) => e.id == id);
  }

  Future<void> refresh() {
    return _apiRepository.fetchTodoList().then(_emitNewList);
  }

  Future<void> update(TodoItem item) async {
    _emitNewList(state.items.map((e) => e.url == item.url ? item : e).toList());
    await _apiRepository.updateItem(
      item.url,
      TodoUpdateRequest(
        title: item.title,
        completed: item.completed,
        order: item.order,
      ),
    );
  }

  Future<void> addItem(String text, int order) async {
    final newTodo = await _apiRepository
        .addItem(TodoCreateRequest(title: text, order: order));
    _emitNewList(state.items.toList()..add(newTodo));
  }

  Future<void> deleteItem(TodoItem item) async {
    _emitNewList(state.items.where((e) => e.url != item.url).toList());
    await _apiRepository.deleteItem(item.url);
  }

  void deleteAll() {
    emit(state.copyWith(items: []));
    _apiRepository.deleteAll();
  }

  void toggleFilter(FilterType filter) {
    if (state.filters.contains(filter)) {
      emit(state.copyWith(filters: state.filters.toSet()..remove(filter)));
    } else {
      emit(state.copyWith(filters: state.filters.toSet()..add(filter)));
    }
  }
}
