// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo/bloc/todo_list.dart';

import 'package:todo/models/todo.dart';
import 'package:todo/repositories/todo.dart';
import 'package:todo/screens/home.dart';

class MockRepository extends Mock implements TodoRepository {}

void main() {
  late MockRepository repository;

  setUp(() {
    repository = MockRepository();
    when(repository.fetchTodoList).thenAnswer((invocation) async => [
          const TodoItem(url: "123", title: "123", competed: false, order: 2),
          const TodoItem(url: "321", title: "321", competed: true, order: 1),
        ]);
  });

  testWidgets("Home screen test", (WidgetTester tester) async {
    await tester.pumpWidget(
      BlocProvider(
        create: (_) => TodoListCubit(repository),
        child: const MaterialApp(home: HomeScreen()),
      ),
    );
    await tester.pump();

    expect(find.text('123'), findsOneWidget);
    expect(find.text('321'), findsOneWidget);
  });
}
