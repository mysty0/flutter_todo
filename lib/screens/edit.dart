import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:todo/bloc/edit.dart';
import 'package:todo/bloc/todo_list.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final todoList = context.read<TodoListCubit>();
        return EditCubit(id != null ? todoList.getById(id!) : null, todoList);
      },
      child: BlocProvider(
        create: (context) {
          return EditFormBloc(context.read<EditCubit>());
        },
        child: Material(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: FormBlocListener<EditFormBloc, String, String>(
                  onSuccess: (_, __) {
                    Navigator.of(context).pop();
                  },
                  child: EditScreenContent(id: id)),
            ),
          ),
        ),
      ),
    );
  }
}

class EditScreenContent extends StatelessWidget {
  const EditScreenContent({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  Widget build(BuildContext context) {
    final formBloc = BlocProvider.of<EditFormBloc>(context);
    final isNewItem = id == null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              isNewItem ? "Create new TODO" : "Edit TODO",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Spacer(),
            if(!isNewItem) IconButton(icon: const Icon(Icons.delete), onPressed: () {
              context.read<EditCubit>().delete();
              Navigator.of(context).pop();
            }),
          ],
        ),
        const SizedBox(height: 10),
        TextFieldBlocBuilder(
          textFieldBloc: formBloc.title,
          decoration: const InputDecoration(labelText: "Title"),
        ),
        const SizedBox(height: 10),
        SliderFieldBlocBuilder(
          decoration: const InputDecoration(labelText: "Order"),
          inputFieldBloc: formBloc.order,
          labelBuilder: (context, value) => value.toInt().toString(),
          min: 0,
          max: 100,
          divisions: 100,
        ),
        const Spacer(),
        _BottomButtons(
          formBloc: formBloc,
          newItem: isNewItem,
        ),
      ],
    );
  }
}

class _BottomButtons extends StatelessWidget {
  const _BottomButtons({
    super.key,
    required this.formBloc,
    required this.newItem,
  });

  final EditFormBloc formBloc;
  final bool newItem;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditCubit, EditState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        return Row(
          children: [
            Expanded(
              flex: 2,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel"),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 3,
              child: FilledButton(
                onPressed: () {
                  formBloc.submit();
                },
                child: Text(newItem ? "Create" : "Save"),
              ),
            ),
          ],
        );
      },
    );
  }
}
