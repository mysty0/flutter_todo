import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:hive/hive.dart";
import "package:hive_flutter/adapters.dart";
import "package:local_auth/local_auth.dart";
import "package:todo/bloc/auth.dart";
import "package:todo/bloc/todo_list.dart";
import "package:todo/repositories/auth.dart";
import "package:todo/repositories/todo.dart";
import "package:todo/routes/routes.dart";
import "package:todo/screens/home.dart";

import "models/auth.dart";

String initialRouteFromSettings(AuthSettings? settings) {
  if(settings == null || !settings.enabled) return const AuthSetupRoute().location;
  switch(settings.type){
    case AuthType.pin:
      return const AuthPinConfirmRoute().location;
    case AuthType.biometrics:
      return const AuthBiometricsConfirmRoute().location;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(AuthSettingsAdapter());
  Hive.registerAdapter(AuthTypeAdapter());
  await Hive.openBox<AuthSettings>("auth");

  final authRepository = AuthRepository();
  authRepository.initStore();
  final authCubit = AuthCubit(authRepository, await authRepository.isBiometricsAvailable());
  
  final todoRepository = TodoRepository();
  final todoCubit = TodoListCubit(todoRepository);

  await todoCubit.refresh();

  final router = GoRouter(
    initialLocation: initialRouteFromSettings(authRepository.settings),
    routes: $appRoutes,
  );

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => todoRepository),
        RepositoryProvider(create: (_) => authRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => todoCubit),
          BlocProvider(create: (_) => authCubit),
        ],
        child: MyApp(router: router,),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.router});

  final GoRouter router;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      routerConfig: router,
    );
  }
}
