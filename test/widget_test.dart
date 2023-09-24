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
import 'package:todo/bloc/edit.dart';
import 'package:todo/bloc/todo_list.dart';

import 'package:todo/models/todo.dart';
import 'package:todo/repositories/todo.dart';
import 'package:todo/screens/edit.dart';
import 'package:todo/screens/home.dart';

class MockRepository extends Mock implements TodoRepository {}

void main() {
  late MockRepository repository;

  setUpAll(() {
    registerFallbackValue(const TodoUpdateRequest());
  });

  setUp(() {
    repository = MockRepository();
    when(() => repository.fetchTodoList()).thenAnswer((invocation) async => [
          const TodoItem(url: "123", title: "123", completed: false, order: 2),
          const TodoItem(url: "321", title: "321", completed: true, order: 1),
        ]);

    when(() => repository.updateItem(any(), any())).thenAnswer(
      (invocation) async =>
          const TodoItem(url: "123", title: "123", completed: false, order: 2),
    );
  });

  group("Home screen test", () {
    Future<void> pumpHome(WidgetTester tester) async {
      final cubit = TodoListCubit(repository);
      await cubit.refresh();
      await tester.pumpWidget(
        BlocProvider(
          create: (_) => cubit,
          child: const MaterialApp(home: HomeScreen()),
        ),
      );
    }

    void checkTile(String title, bool checked) {
      final text = find.text(title);
      expect(text, findsOneWidget);
      final ancestor = find.ancestor(of: text, matching: find.byType(ListTile));
      final checkbox = find.descendant(
          of: ancestor,
          matching: find
              .byWidgetPredicate((w) => w is Checkbox && w.value == checked));
      expect(checkbox, findsOneWidget);
    }

    testWidgets("Home test display", (WidgetTester tester) async {
      await pumpHome(tester);
      await tester.pump();

      checkTile('123', false);
      checkTile('321', true);
    });

    testWidgets("Home test complete", (WidgetTester tester) async {
      await pumpHome(tester);
      await tester.pump();

      final checkbox =
          find.byWidgetPredicate((w) => w is Checkbox && w.value != true);
      await tester.tap(checkbox);
      await tester.pump();

      checkTile('123', true);
      verify(
        () => repository.updateItem(
            '123',
            const TodoUpdateRequest(
              title: "123",
              completed: true,
              order: 2,
            )),
      ).called(1);
    });
  });

  group("Create test", () {
    Future<void> pumpCreate(WidgetTester tester) async {
      final listCubit = TodoListCubit(repository);
      await listCubit.refresh();
      await tester.pumpWidget(
        BlocProvider(
          create: (_) => listCubit,
          child: const MaterialApp(home: EditScreen(id: null)),
        ),
      );
    }

    testWidgets("correct title", (WidgetTester tester) async {
      await pumpCreate(tester);
      await tester.pump(const Duration());

      expect(find.text("Create new TODO"), findsOneWidget);
    });

    testWidgets("create new item", (WidgetTester tester) async {
      await pumpCreate(tester);
      await tester.pump(const Duration());

      await tester.enterText(find.byType(TextField), '123');
      final createButton = find.bySemanticsLabel("Create");
      expect(createButton, findsOneWidget);
      await tester.tap(createButton);

      verify(
        () => repository.addItem(
          const TodoCreateRequest(title: '123', order: 0),
        ),
      ).called(1);
    });
  });

  group("Edit test", () {
    Future<void> pumpCreate(WidgetTester tester) async {
      final listCubit = TodoListCubit(repository);
      await listCubit.refresh();
      await tester.pumpWidget(
        BlocProvider(
          create: (_) => listCubit,
          child: MaterialApp(home: EditScreen(id: "123".hashCode)),
        ),
      );
    }

    testWidgets("correct title", (WidgetTester tester) async {
      await pumpCreate(tester);
      await tester.pump(const Duration());

      expect(find.text("Edit TODO"), findsOneWidget);
      expect(find.widgetWithText(TextField, "123"), findsOneWidget);
    });

    testWidgets("create new item", (WidgetTester tester) async {
      await pumpCreate(tester);
      await tester.pump(const Duration());

      await tester.enterText(find.byType(TextField), '1234');
      final createButton = find.bySemanticsLabel("Save");
      expect(createButton, findsOneWidget);
      await tester.tap(createButton);

      verify(
            () => repository.updateItem(
            '123',
            const TodoUpdateRequest(
              title: "1234",
              completed: false,
              order: 2,
            )),
      ).called(1);
    });
  });
}
