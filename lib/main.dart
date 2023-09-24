import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_list.dart';
import 'package:todo/repositories/todo.dart';
import 'package:todo/screens/home.dart';

void main() async {
  final repository = TodoRepository();
  final todoCubit = TodoListCubit(repository);

  await todoCubit.refresh();

  runApp(
    RepositoryProvider(
      create: (BuildContext context) => repository,
      child: BlocProvider(
        create: (BuildContext context) => todoCubit,
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
          brightness: Brightness.dark),
      home: const HomeScreen(),
    );
  }
}
