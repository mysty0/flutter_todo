import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/bloc/todo_list.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.error,
    required this.nextRoute,
  });

  final String error;
  final String nextRoute;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Connection with backend cant be established, please try later",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text(
              "Error details:\n$error",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 40),
            FilledButton(
              onPressed: () {
                context
                    .read<TodoListCubit>()
                    .refresh()
                    .then((_) => context.go(nextRoute));
              },
              child: const Text("Try again"),
            ),
          ],
        ),
      ),
    );
  }
}
