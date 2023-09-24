import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/screens/home.dart';

import '../screens/edit.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

@TypedGoRoute<TodoNewRoute>(path: '/new')
class TodoNewRoute extends GoRouteData {
  const TodoNewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EditScreen(id: null);
}


@TypedGoRoute<TodoEditRoute>(path: '/todo/:id')
class TodoEditRoute extends GoRouteData {
  const TodoEditRoute({required this.id});
  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) => EditScreen(id: id);
}
