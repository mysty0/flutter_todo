import 'package:bloc/bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:todo/bloc/todo_list.dart';

import '../models/todo.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit.freezed.dart';

@freezed
class EditState with _$EditState {
  const factory EditState({
    required TodoItem? editingItem,
    required bool loading,
  }) = _EditState;
}

class EditCubit extends Cubit<EditState> {
  final TodoListCubit _todoList;

  EditCubit(TodoItem? item, this._todoList)
      : super(EditState(
          loading: false,
          editingItem: item,
        ));

  Future<void> save(String text, int order) async {
    emit(state.copyWith(loading: true));
    if (state.editingItem == null) {
      await _todoList.addItem(text, order);
    } else {
      await _todoList.update(state.editingItem!.copyWith(
        title: text,
        order: order,
      ));
    }
    emit(state.copyWith(loading: false));
  }
}

class EditFormBloc extends FormBloc<String, String> {
  final title = TextFieldBloc(validators: [FieldBlocValidators.required]);
  final order = InputFieldBloc<double, dynamic>(
    initialValue: 0,
  );

  final EditCubit editCubit;

  EditFormBloc(this.editCubit) : super(autoValidate: true) {
    final item = editCubit.state.editingItem;
    if (item != null) {
      title.changeValue(item.title);
      order.changeValue(item.order?.toDouble() ?? 0);
    }

    addFieldBlocs(fieldBlocs: [
      title,
      order,
    ]);
  }

  @override
  void onSubmitting() async {
    try {
      await editCubit.save(title.value, order.value.toInt());

      emitSuccess(canSubmitAgain: true);
    } catch (e) {
      emitFailure();
    }
  }
}
