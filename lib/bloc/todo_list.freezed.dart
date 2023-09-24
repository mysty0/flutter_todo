// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TodoItem> items, TodoItem? recentlyDeleted)
        data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TodoItem> items, TodoItem? recentlyDeleted)? data,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TodoItem> items, TodoItem? recentlyDeleted)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoListStateLoading value) loading,
    required TResult Function(TodoListStateData value) data,
    required TResult Function(TodoListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoListStateLoading value)? loading,
    TResult? Function(TodoListStateData value)? data,
    TResult? Function(TodoListStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoListStateLoading value)? loading,
    TResult Function(TodoListStateData value)? data,
    TResult Function(TodoListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res, TodoListState>;
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res, $Val extends TodoListState>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodoListStateLoadingCopyWith<$Res> {
  factory _$$TodoListStateLoadingCopyWith(_$TodoListStateLoading value,
          $Res Function(_$TodoListStateLoading) then) =
      __$$TodoListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoListStateLoadingCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res, _$TodoListStateLoading>
    implements _$$TodoListStateLoadingCopyWith<$Res> {
  __$$TodoListStateLoadingCopyWithImpl(_$TodoListStateLoading _value,
      $Res Function(_$TodoListStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoListStateLoading
    with DiagnosticableTreeMixin
    implements TodoListStateLoading {
  const _$TodoListStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoListState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TodoListState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TodoItem> items, TodoItem? recentlyDeleted)
        data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TodoItem> items, TodoItem? recentlyDeleted)? data,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TodoItem> items, TodoItem? recentlyDeleted)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoListStateLoading value) loading,
    required TResult Function(TodoListStateData value) data,
    required TResult Function(TodoListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoListStateLoading value)? loading,
    TResult? Function(TodoListStateData value)? data,
    TResult? Function(TodoListStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoListStateLoading value)? loading,
    TResult Function(TodoListStateData value)? data,
    TResult Function(TodoListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodoListStateLoading implements TodoListState {
  const factory TodoListStateLoading() = _$TodoListStateLoading;
}

/// @nodoc
abstract class _$$TodoListStateDataCopyWith<$Res> {
  factory _$$TodoListStateDataCopyWith(
          _$TodoListStateData value, $Res Function(_$TodoListStateData) then) =
      __$$TodoListStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TodoItem> items, TodoItem? recentlyDeleted});

  $TodoItemCopyWith<$Res>? get recentlyDeleted;
}

/// @nodoc
class __$$TodoListStateDataCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res, _$TodoListStateData>
    implements _$$TodoListStateDataCopyWith<$Res> {
  __$$TodoListStateDataCopyWithImpl(
      _$TodoListStateData _value, $Res Function(_$TodoListStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? recentlyDeleted = freezed,
  }) {
    return _then(_$TodoListStateData(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
      freezed == recentlyDeleted
          ? _value.recentlyDeleted
          : recentlyDeleted // ignore: cast_nullable_to_non_nullable
              as TodoItem?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoItemCopyWith<$Res>? get recentlyDeleted {
    if (_value.recentlyDeleted == null) {
      return null;
    }

    return $TodoItemCopyWith<$Res>(_value.recentlyDeleted!, (value) {
      return _then(_value.copyWith(recentlyDeleted: value));
    });
  }
}

/// @nodoc

class _$TodoListStateData
    with DiagnosticableTreeMixin
    implements TodoListStateData {
  const _$TodoListStateData(final List<TodoItem> items, this.recentlyDeleted)
      : _items = items;

  final List<TodoItem> _items;
  @override
  List<TodoItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final TodoItem? recentlyDeleted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoListState.data(items: $items, recentlyDeleted: $recentlyDeleted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoListState.data'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('recentlyDeleted', recentlyDeleted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListStateData &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.recentlyDeleted, recentlyDeleted) ||
                other.recentlyDeleted == recentlyDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), recentlyDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListStateDataCopyWith<_$TodoListStateData> get copyWith =>
      __$$TodoListStateDataCopyWithImpl<_$TodoListStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TodoItem> items, TodoItem? recentlyDeleted)
        data,
    required TResult Function(String error) error,
  }) {
    return data(items, recentlyDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TodoItem> items, TodoItem? recentlyDeleted)? data,
    TResult? Function(String error)? error,
  }) {
    return data?.call(items, recentlyDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TodoItem> items, TodoItem? recentlyDeleted)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(items, recentlyDeleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoListStateLoading value) loading,
    required TResult Function(TodoListStateData value) data,
    required TResult Function(TodoListStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoListStateLoading value)? loading,
    TResult? Function(TodoListStateData value)? data,
    TResult? Function(TodoListStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoListStateLoading value)? loading,
    TResult Function(TodoListStateData value)? data,
    TResult Function(TodoListStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class TodoListStateData implements TodoListState {
  const factory TodoListStateData(
          final List<TodoItem> items, final TodoItem? recentlyDeleted) =
      _$TodoListStateData;

  List<TodoItem> get items;
  TodoItem? get recentlyDeleted;
  @JsonKey(ignore: true)
  _$$TodoListStateDataCopyWith<_$TodoListStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoListStateErrorCopyWith<$Res> {
  factory _$$TodoListStateErrorCopyWith(_$TodoListStateError value,
          $Res Function(_$TodoListStateError) then) =
      __$$TodoListStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$TodoListStateErrorCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res, _$TodoListStateError>
    implements _$$TodoListStateErrorCopyWith<$Res> {
  __$$TodoListStateErrorCopyWithImpl(
      _$TodoListStateError _value, $Res Function(_$TodoListStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TodoListStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TodoListStateError
    with DiagnosticableTreeMixin
    implements TodoListStateError {
  const _$TodoListStateError(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoListState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoListState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListStateErrorCopyWith<_$TodoListStateError> get copyWith =>
      __$$TodoListStateErrorCopyWithImpl<_$TodoListStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TodoItem> items, TodoItem? recentlyDeleted)
        data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TodoItem> items, TodoItem? recentlyDeleted)? data,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TodoItem> items, TodoItem? recentlyDeleted)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoListStateLoading value) loading,
    required TResult Function(TodoListStateData value) data,
    required TResult Function(TodoListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoListStateLoading value)? loading,
    TResult? Function(TodoListStateData value)? data,
    TResult? Function(TodoListStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoListStateLoading value)? loading,
    TResult Function(TodoListStateData value)? data,
    TResult Function(TodoListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodoListStateError implements TodoListState {
  const factory TodoListStateError(final String error) = _$TodoListStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$TodoListStateErrorCopyWith<_$TodoListStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
