// GENERATED CODE - DO NOT MODIFY BY HAND

part of "routes.dart";

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $todoNewRoute,
      $todoEditRoute,
      $authSetupRoute,
      $authPinSetupRoute,
      $authPinConfirmRoute,
      $authBiometricsConfirmRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: "/",
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        "/",
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $todoNewRoute => GoRouteData.$route(
      path: "/new",
      factory: $TodoNewRouteExtension._fromState,
    );

extension $TodoNewRouteExtension on TodoNewRoute {
  static TodoNewRoute _fromState(GoRouterState state) => const TodoNewRoute();

  String get location => GoRouteData.$location(
        "/new",
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $todoEditRoute => GoRouteData.$route(
      path: "/todo/:id",
      factory: $TodoEditRouteExtension._fromState,
    );

extension $TodoEditRouteExtension on TodoEditRoute {
  static TodoEditRoute _fromState(GoRouterState state) => TodoEditRoute(
        id: int.parse(state.pathParameters["id"]!),
      );

  String get location => GoRouteData.$location(
        "/todo/${Uri.encodeComponent(id.toString())}",
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authSetupRoute => GoRouteData.$route(
      path: "/auth/setup",
      factory: $AuthSetupRouteExtension._fromState,
    );

extension $AuthSetupRouteExtension on AuthSetupRoute {
  static AuthSetupRoute _fromState(GoRouterState state) =>
      const AuthSetupRoute();

  String get location => GoRouteData.$location(
        "/auth/setup",
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authPinSetupRoute => GoRouteData.$route(
      path: "/auth/pin/setup",
      factory: $AuthPinSetupRouteExtension._fromState,
    );

extension $AuthPinSetupRouteExtension on AuthPinSetupRoute {
  static AuthPinSetupRoute _fromState(GoRouterState state) =>
      const AuthPinSetupRoute();

  String get location => GoRouteData.$location(
        "/auth/pin/setup",
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authPinConfirmRoute => GoRouteData.$route(
      path: "/auth/pin/confirm",
      factory: $AuthPinConfirmRouteExtension._fromState,
    );

extension $AuthPinConfirmRouteExtension on AuthPinConfirmRoute {
  static AuthPinConfirmRoute _fromState(GoRouterState state) =>
      const AuthPinConfirmRoute();

  String get location => GoRouteData.$location(
        "/auth/pin/confirm",
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authBiometricsConfirmRoute => GoRouteData.$route(
      path: "/auth/biometrics",
      factory: $AuthBiometricsConfirmRouteExtension._fromState,
    );

extension $AuthBiometricsConfirmRouteExtension on AuthBiometricsConfirmRoute {
  static AuthBiometricsConfirmRoute _fromState(GoRouterState state) =>
      const AuthBiometricsConfirmRoute();

  String get location => GoRouteData.$location(
        "/auth/biometrics",
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
