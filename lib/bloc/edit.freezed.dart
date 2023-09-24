// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditState {
  TodoItem? get editingItem => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditStateCopyWith<EditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStateCopyWith<$Res> {
  factory $EditStateCopyWith(EditState value, $Res Function(EditState) then) =
      _$EditStateCopyWithImpl<$Res, EditState>;
  @useResult
  $Res call({TodoItem? editingItem, bool loading});

  $TodoItemCopyWith<$Res>? get editingItem;
}

/// @nodoc
class _$EditStateCopyWithImpl<$Res, $Val extends EditState>
    implements $EditStateCopyWith<$Res> {
  _$EditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editingItem = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      editingItem: freezed == editingItem
          ? _value.editingItem
          : editingItem // ignore: cast_nullable_to_non_nullable
              as TodoItem?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoItemCopyWith<$Res>? get editingItem {
    if (_value.editingItem == null) {
      return null;
    }

    return $TodoItemCopyWith<$Res>(_value.editingItem!, (value) {
      return _then(_value.copyWith(editingItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EditStateCopyWith<$Res> implements $EditStateCopyWith<$Res> {
  factory _$$_EditStateCopyWith(
          _$_EditState value, $Res Function(_$_EditState) then) =
      __$$_EditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TodoItem? editingItem, bool loading});

  @override
  $TodoItemCopyWith<$Res>? get editingItem;
}

/// @nodoc
class __$$_EditStateCopyWithImpl<$Res>
    extends _$EditStateCopyWithImpl<$Res, _$_EditState>
    implements _$$_EditStateCopyWith<$Res> {
  __$$_EditStateCopyWithImpl(
      _$_EditState _value, $Res Function(_$_EditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editingItem = freezed,
    Object? loading = null,
  }) {
    return _then(_$_EditState(
      editingItem: freezed == editingItem
          ? _value.editingItem
          : editingItem // ignore: cast_nullable_to_non_nullable
              as TodoItem?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EditState implements _EditState {
  const _$_EditState({required this.editingItem, required this.loading});

  @override
  final TodoItem? editingItem;
  @override
  final bool loading;

  @override
  String toString() {
    return 'EditState(editingItem: $editingItem, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditState &&
            (identical(other.editingItem, editingItem) ||
                other.editingItem == editingItem) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editingItem, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditStateCopyWith<_$_EditState> get copyWith =>
      __$$_EditStateCopyWithImpl<_$_EditState>(this, _$identity);
}

abstract class _EditState implements EditState {
  const factory _EditState(
      {required final TodoItem? editingItem,
      required final bool loading}) = _$_EditState;

  @override
  TodoItem? get editingItem;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_EditStateCopyWith<_$_EditState> get copyWith =>
      throw _privateConstructorUsedError;
}
