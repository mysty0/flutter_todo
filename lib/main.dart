import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_list.dart';
import 'package:todo/repositories/todo.dart';
import 'package:todo/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: RepositoryProvider(
        create: (BuildContext context) => TodoRepository(),
        child: BlocProvider(
            create: (BuildContext context) => TodoListCubit(
                  context.read<TodoRepository>(),
                ),
            child: const HomeScreen()),
      ),
    );
  }
}
