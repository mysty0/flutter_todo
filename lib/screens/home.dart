import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:todo/bloc/auth.dart";
import "package:todo/bloc/todo_list.dart";
import "package:todo/routes/routes.dart";

import "../models/todo.dart";

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
              const SizedBox(height: 10),
              Text(
                "TODO List",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: BlocBuilder<TodoListCubit, TodoState>(
                  builder: (context, state) {
                    return TodoListBody(items: state.filteredItems);
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const TodoNewRoute().push(context);
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.centerStart,
      persistentFooterButtons: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const RemoveAllDialog(),
            ).then((value) {
              if (value == true) context.read<TodoListCubit>().deleteAll();
            });
          },
          icon: const Icon(Icons.delete_sweep_rounded),
        ),
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const ResetAuthDialog(),
            ).then((value) {
              if (value == true) {
                context.read<AuthCubit>().reset();
                const AuthSetupRoute().go(context);
              }
              ;
            });
          },
          icon: const Icon(Icons.restart_alt),
        ),
      ],
      drawer: Container(),
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
    return Column(
      children: [
        BlocBuilder<TodoListCubit, TodoState>(builder: (context, state) {
          return Row(
            children: [
              TodoFilterChip(
                state: state,
                title: "Completed",
                type: FilterType.completed,
              ),
              const SizedBox(width: 10),
              TodoFilterChip(
                state: state,
                title: "Uncompleted",
                type: FilterType.uncompleted,
              )
            ],
          );
        }),
        Expanded(
          child: ListView(
            children: ListTile.divideTiles(
              context: context,
              tiles: [for (final item in items) TodoTile(item: item)],
            ).toList(),
          ),
        ),
      ],
    );
  }
}

class TodoFilterChip extends StatelessWidget {
  const TodoFilterChip({
    super.key,
    required this.state,
    required this.title,
    required this.type,
  });

  final TodoState state;
  final String title;
  final FilterType type;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(title),
      onSelected: (bool value) {
        context.read<TodoListCubit>().toggleFilter(type);
      },
      selected: state.filters.contains(type),
    );
  }
}

class TodoTile extends StatelessWidget {
  const TodoTile({
    super.key,
    required this.item,
  });

  final TodoItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title),
      subtitle: Text("Order: ${item.order}"),
      trailing: Checkbox(
        value: item.completed ?? false,
        onChanged: (bool? value) {
          context
              .read<TodoListCubit>()
              .update(item.copyWith(completed: value == true));
        },
      ),
      onTap: () {
        TodoEditRoute(id: item.id).push(context);
      },
    );
  }
}

class RemoveAllDialog extends StatelessWidget {
  const RemoveAllDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Remove all todos?"),
      content: const Text("All todos will be removed"),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text("Remove all"),
        ),
      ],
    );
  }
}

class ResetAuthDialog extends StatelessWidget {
  const ResetAuthDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Reset authentication?"),
      content: const Text("Reconfirm authentication will be required"),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text("Reset"),
        ),
      ],
    );
  }
}
