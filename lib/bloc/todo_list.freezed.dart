// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of "todo_list.dart";

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    "It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods");

/// @nodoc
mixin _$TodoState {
  List<TodoItem> get items => throw _privateConstructorUsedError;
  Set<FilterType> get filters => throw _privateConstructorUsedError;
  TodoItem? get recentlyDeleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {List<TodoItem> items,
      Set<FilterType> filters,
      TodoItem? recentlyDeleted});

  $TodoItemCopyWith<$Res>? get recentlyDeleted;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma("vm:prefer-inline")
  @override
  $Res call({
    Object? items = null,
    Object? filters = null,
    Object? recentlyDeleted = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Set<FilterType>,
      recentlyDeleted: freezed == recentlyDeleted
          ? _value.recentlyDeleted
          : recentlyDeleted // ignore: cast_nullable_to_non_nullable
              as TodoItem?,
    ) as $Val);
  }

  @override
  @pragma("vm:prefer-inline")
  $TodoItemCopyWith<$Res>? get recentlyDeleted {
    if (_value.recentlyDeleted == null) {
      return null;
    }

    return $TodoItemCopyWith<$Res>(_value.recentlyDeleted!, (value) {
      return _then(_value.copyWith(recentlyDeleted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$_TodoStateCopyWith(
          _$_TodoState value, $Res Function(_$_TodoState) then) =
      __$$_TodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TodoItem> items,
      Set<FilterType> filters,
      TodoItem? recentlyDeleted});

  @override
  $TodoItemCopyWith<$Res>? get recentlyDeleted;
}

/// @nodoc
class __$$_TodoStateCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$_TodoState>
    implements _$$_TodoStateCopyWith<$Res> {
  __$$_TodoStateCopyWithImpl(
      _$_TodoState _value, $Res Function(_$_TodoState) _then)
      : super(_value, _then);

  @pragma("vm:prefer-inline")
  @override
  $Res call({
    Object? items = null,
    Object? filters = null,
    Object? recentlyDeleted = freezed,
  }) {
    return _then(_$_TodoState(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Set<FilterType>,
      recentlyDeleted: freezed == recentlyDeleted
          ? _value.recentlyDeleted
          : recentlyDeleted // ignore: cast_nullable_to_non_nullable
              as TodoItem?,
    ));
  }
}

/// @nodoc

class _$_TodoState extends _TodoState with DiagnosticableTreeMixin {
  const _$_TodoState(
      {required final List<TodoItem> items,
      required final Set<FilterType> filters,
      required this.recentlyDeleted})
      : _items = items,
        _filters = filters,
        super._();

  final List<TodoItem> _items;
  @override
  List<TodoItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final Set<FilterType> _filters;
  @override
  Set<FilterType> get filters {
    if (_filters is EqualUnmodifiableSetView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_filters);
  }

  @override
  final TodoItem? recentlyDeleted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "TodoState(items: $items, filters: $filters, recentlyDeleted: $recentlyDeleted)";
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "TodoState"))
      ..add(DiagnosticsProperty("items", items))
      ..add(DiagnosticsProperty("filters", filters))
      ..add(DiagnosticsProperty("recentlyDeleted", recentlyDeleted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.recentlyDeleted, recentlyDeleted) ||
                other.recentlyDeleted == recentlyDeleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_filters),
      recentlyDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma("vm:prefer-inline")
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      __$$_TodoStateCopyWithImpl<_$_TodoState>(this, _$identity);
}

abstract class _TodoState extends TodoState {
  const factory _TodoState(
      {required final List<TodoItem> items,
      required final Set<FilterType> filters,
      required final TodoItem? recentlyDeleted}) = _$_TodoState;
  const _TodoState._() : super._();

  @override
  List<TodoItem> get items;
  @override
  Set<FilterType> get filters;
  @override
  TodoItem? get recentlyDeleted;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
