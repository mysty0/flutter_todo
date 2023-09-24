// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoItem _$TodoItemFromJson(Map<String, dynamic> json) {
  return _TodoItem.fromJson(json);
}

/// @nodoc
mixin _$TodoItem {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoItemCopyWith<TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemCopyWith<$Res> {
  factory $TodoItemCopyWith(TodoItem value, $Res Function(TodoItem) then) =
      _$TodoItemCopyWithImpl<$Res, TodoItem>;
  @useResult
  $Res call({String url, String title, bool? completed, int? order});
}

/// @nodoc
class _$TodoItemCopyWithImpl<$Res, $Val extends TodoItem>
    implements $TodoItemCopyWith<$Res> {
  _$TodoItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? completed = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoItemCopyWith<$Res> implements $TodoItemCopyWith<$Res> {
  factory _$$_TodoItemCopyWith(
          _$_TodoItem value, $Res Function(_$_TodoItem) then) =
      __$$_TodoItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String title, bool? completed, int? order});
}

/// @nodoc
class __$$_TodoItemCopyWithImpl<$Res>
    extends _$TodoItemCopyWithImpl<$Res, _$_TodoItem>
    implements _$$_TodoItemCopyWith<$Res> {
  __$$_TodoItemCopyWithImpl(
      _$_TodoItem _value, $Res Function(_$_TodoItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? completed = freezed,
    Object? order = freezed,
  }) {
    return _then(_$_TodoItem(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoItem extends _TodoItem with DiagnosticableTreeMixin {
  const _$_TodoItem(
      {required this.url,
      required this.title,
      required this.completed,
      required this.order})
      : super._();

  factory _$_TodoItem.fromJson(Map<String, dynamic> json) =>
      _$$_TodoItemFromJson(json);

  @override
  final String url;
  @override
  final String title;
  @override
  final bool? completed;
  @override
  final int? order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoItem(url: $url, title: $title, completed: $completed, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoItem'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('completed', completed))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoItem &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title, completed, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoItemCopyWith<_$_TodoItem> get copyWith =>
      __$$_TodoItemCopyWithImpl<_$_TodoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoItemToJson(
      this,
    );
  }
}

abstract class _TodoItem extends TodoItem {
  const factory _TodoItem(
      {required final String url,
      required final String title,
      required final bool? completed,
      required final int? order}) = _$_TodoItem;
  const _TodoItem._() : super._();

  factory _TodoItem.fromJson(Map<String, dynamic> json) = _$_TodoItem.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  bool? get completed;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$$_TodoItemCopyWith<_$_TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

TodoCreateRequest _$TodoCreateRequestFromJson(Map<String, dynamic> json) {
  return _TodoCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$TodoCreateRequest {
  String get title => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCreateRequestCopyWith<TodoCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCreateRequestCopyWith<$Res> {
  factory $TodoCreateRequestCopyWith(
          TodoCreateRequest value, $Res Function(TodoCreateRequest) then) =
      _$TodoCreateRequestCopyWithImpl<$Res, TodoCreateRequest>;
  @useResult
  $Res call({String title, int order});
}

/// @nodoc
class _$TodoCreateRequestCopyWithImpl<$Res, $Val extends TodoCreateRequest>
    implements $TodoCreateRequestCopyWith<$Res> {
  _$TodoCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoCreateRequestCopyWith<$Res>
    implements $TodoCreateRequestCopyWith<$Res> {
  factory _$$_TodoCreateRequestCopyWith(_$_TodoCreateRequest value,
          $Res Function(_$_TodoCreateRequest) then) =
      __$$_TodoCreateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int order});
}

/// @nodoc
class __$$_TodoCreateRequestCopyWithImpl<$Res>
    extends _$TodoCreateRequestCopyWithImpl<$Res, _$_TodoCreateRequest>
    implements _$$_TodoCreateRequestCopyWith<$Res> {
  __$$_TodoCreateRequestCopyWithImpl(
      _$_TodoCreateRequest _value, $Res Function(_$_TodoCreateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? order = null,
  }) {
    return _then(_$_TodoCreateRequest(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoCreateRequest
    with DiagnosticableTreeMixin
    implements _TodoCreateRequest {
  const _$_TodoCreateRequest({required this.title, required this.order});

  factory _$_TodoCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TodoCreateRequestFromJson(json);

  @override
  final String title;
  @override
  final int order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoCreateRequest(title: $title, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoCreateRequest'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoCreateRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoCreateRequestCopyWith<_$_TodoCreateRequest> get copyWith =>
      __$$_TodoCreateRequestCopyWithImpl<_$_TodoCreateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoCreateRequestToJson(
      this,
    );
  }
}

abstract class _TodoCreateRequest implements TodoCreateRequest {
  const factory _TodoCreateRequest(
      {required final String title,
      required final int order}) = _$_TodoCreateRequest;

  factory _TodoCreateRequest.fromJson(Map<String, dynamic> json) =
      _$_TodoCreateRequest.fromJson;

  @override
  String get title;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$_TodoCreateRequestCopyWith<_$_TodoCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

TodoUpdateRequest _$TodoUpdateRequestFromJson(Map<String, dynamic> json) {
  return _TodoUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$TodoUpdateRequest {
  String? get title => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoUpdateRequestCopyWith<TodoUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoUpdateRequestCopyWith<$Res> {
  factory $TodoUpdateRequestCopyWith(
          TodoUpdateRequest value, $Res Function(TodoUpdateRequest) then) =
      _$TodoUpdateRequestCopyWithImpl<$Res, TodoUpdateRequest>;
  @useResult
  $Res call({String? title, bool? completed, int? order});
}

/// @nodoc
class _$TodoUpdateRequestCopyWithImpl<$Res, $Val extends TodoUpdateRequest>
    implements $TodoUpdateRequestCopyWith<$Res> {
  _$TodoUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? completed = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoUpdateRequestCopyWith<$Res>
    implements $TodoUpdateRequestCopyWith<$Res> {
  factory _$$_TodoUpdateRequestCopyWith(_$_TodoUpdateRequest value,
          $Res Function(_$_TodoUpdateRequest) then) =
      __$$_TodoUpdateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, bool? completed, int? order});
}

/// @nodoc
class __$$_TodoUpdateRequestCopyWithImpl<$Res>
    extends _$TodoUpdateRequestCopyWithImpl<$Res, _$_TodoUpdateRequest>
    implements _$$_TodoUpdateRequestCopyWith<$Res> {
  __$$_TodoUpdateRequestCopyWithImpl(
      _$_TodoUpdateRequest _value, $Res Function(_$_TodoUpdateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? completed = freezed,
    Object? order = freezed,
  }) {
    return _then(_$_TodoUpdateRequest(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoUpdateRequest
    with DiagnosticableTreeMixin
    implements _TodoUpdateRequest {
  const _$_TodoUpdateRequest({this.title, this.completed, this.order});

  factory _$_TodoUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TodoUpdateRequestFromJson(json);

  @override
  final String? title;
  @override
  final bool? completed;
  @override
  final int? order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoUpdateRequest(title: $title, completed: $completed, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoUpdateRequest'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('completed', completed))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoUpdateRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, completed, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoUpdateRequestCopyWith<_$_TodoUpdateRequest> get copyWith =>
      __$$_TodoUpdateRequestCopyWithImpl<_$_TodoUpdateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoUpdateRequestToJson(
      this,
    );
  }
}

abstract class _TodoUpdateRequest implements TodoUpdateRequest {
  const factory _TodoUpdateRequest(
      {final String? title,
      final bool? completed,
      final int? order}) = _$_TodoUpdateRequest;

  factory _TodoUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$_TodoUpdateRequest.fromJson;

  @override
  String? get title;
  @override
  bool? get completed;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$$_TodoUpdateRequestCopyWith<_$_TodoUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
