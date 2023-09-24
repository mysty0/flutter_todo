import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_list.dart';

import '../models/todo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TODO List",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: BlocBuilder<TodoListCubit, TodoListState>(
                  builder: (context, state) {
                    return state.when(
                      loading: () => const CircularProgressIndicator(),
                      data: (items, _) => TodoListBody(items: items),
                      error: (error) => TodoListError(error: error),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TodoListError extends StatelessWidget {
  const TodoListError({
    super.key,
    required this.error,
  });

  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Unknown error happened, please try later",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 10),
        Text(
          "Error details $error",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 10),
        FilledButton(onPressed: () {}, child: const Text("Refresh"))
      ],
    );
  }
}

class TodoListBody extends StatelessWidget {
  const TodoListBody({
    super.key,
    required this.items,
  });

  final List<TodoItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (final item in items)
          ListTile(
            title: Text(item.title),
            trailing: Checkbox(
              value: item.competed ?? false,
              onChanged: (bool? value) {},
            ),
          )
      ],
    );
  }
}
