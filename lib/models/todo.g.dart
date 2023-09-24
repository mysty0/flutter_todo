// GENERATED CODE - DO NOT MODIFY BY HAND

part of "todo.dart";

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoItem _$$_TodoItemFromJson(Map<String, dynamic> json) => _$_TodoItem(
      url: json["url"] as String,
      title: json["title"] as String,
      completed: json["completed"] as bool?,
      order: json["order"] as int?,
    );

Map<String, dynamic> _$$_TodoItemToJson(_$_TodoItem instance) =>
    <String, dynamic>{
      "url": instance.url,
      "title": instance.title,
      "completed": instance.completed,
      "order": instance.order,
    };

_$_TodoCreateRequest _$$_TodoCreateRequestFromJson(Map<String, dynamic> json) =>
    _$_TodoCreateRequest(
      title: json["title"] as String,
      order: json["order"] as int,
    );

Map<String, dynamic> _$$_TodoCreateRequestToJson(
        _$_TodoCreateRequest instance) =>
    <String, dynamic>{
      "title": instance.title,
      "order": instance.order,
    };

_$_TodoUpdateRequest _$$_TodoUpdateRequestFromJson(Map<String, dynamic> json) =>
    _$_TodoUpdateRequest(
      title: json["title"] as String?,
      completed: json["completed"] as bool?,
      order: json["order"] as int?,
    );

Map<String, dynamic> _$$_TodoUpdateRequestToJson(
        _$_TodoUpdateRequest instance) =>
    <String, dynamic>{
      "title": instance.title,
      "completed": instance.completed,
      "order": instance.order,
    };
