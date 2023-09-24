import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class TodoItem with _$TodoItem {
  const factory TodoItem({
    required String url,
    required String title,
    required bool? completed,
    required int? order,
  }) = _TodoItem;

  factory TodoItem.fromJson(Map<String, dynamic> json) =>
      _$TodoItemFromJson(json);
}

@freezed
class TodoCreateRequest with _$TodoCreateRequest {
  const factory TodoCreateRequest({
    required String title,
    required int order,
  }) = _TodoCreateRequest;
  
  factory TodoCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$TodoCreateRequestFromJson(json);
}

@freezed
class TodoUpdateRequest with _$TodoUpdateRequest {
  const factory TodoUpdateRequest({
    String? title,
    bool? completed,
    int? order,
  }) = _TodoUpdateRequest;

  factory TodoUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$TodoUpdateRequestFromJson(json);
}