import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_form_bloc/flutter_form_bloc.dart";
import "package:todo/bloc/auth.dart";
import "package:todo/routes/routes.dart";

class AuthScreenWrapper extends StatelessWidget {
  const AuthScreenWrapper(
      {super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 40),
              ...children,
            ],
          ),
        ),
      ),
    );
  }
}

class AuthSetupScreen extends StatelessWidget {
  const AuthSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      return AuthScreenWrapper(
        title: "Authentication setup",
        children: [
          if (state.biometricsAvailable)
            FilledButton(
              onPressed: () {
                context.read<AuthCubit>().setupBiometrics().then((success) {
                  if (success) {
                    const HomeRoute().go(context);
                  }
                });
              },
              child: const Text("Setup biometrics"),
            ),
          if (!state.biometricsAvailable)
            const Text("Biometrics authentication unavailable"),
          const SizedBox(height: 10),
          const Text("or"),
          const SizedBox(height: 10),
          FilledButton(
            onPressed: () {
              const AuthPinSetupRoute().push(context);
            },
            child: const Text("Setup pin"),
          ),
        ],
      );
    });
  }
}

class AuthPinSetupScreen extends StatelessWidget {
  const AuthPinSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => PinSetupFormBloc(context.read<AuthCubit>()),
      child: Builder(
        builder: (context) {
          final formBloc = BlocProvider.of<PinSetupFormBloc>(context);
          return FormBlocListener<PinSetupFormBloc, String, String>(
            onSuccess: (_, __) {
              const HomeRoute().go(context);
            },
            child: AuthScreenWrapper(title: "Setup pin", children: [
              TextFieldBlocBuilder(
                textFieldBloc: formBloc.pin,
                decoration: const InputDecoration(labelText: "Pin"),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              TextFieldBlocBuilder(
                textFieldBloc: formBloc.confirmPin,
                decoration: const InputDecoration(labelText: "Confirm pin"),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              FilledButton(onPressed: () => formBloc.submit(), child: const Text("Set pin")),
            ]),
          );
        }
      ),
    );
  }
}

class AuthPinConfirmScreen extends StatelessWidget {
  const AuthPinConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => PinConfirmFormBloc(context.read<AuthCubit>()),
      child: Builder(
          builder: (context) {
            final formBloc = BlocProvider.of<PinConfirmFormBloc>(context);
            return FormBlocListener<PinConfirmFormBloc, String, String>(
              onSuccess: (_, __) {
                const HomeRoute().go(context);
              },
              child: AuthScreenWrapper(title: "Authorize with pin", children: [
                TextFieldBlocBuilder(
                  textFieldBloc: formBloc.pin,
                  decoration: const InputDecoration(labelText: "Pin"),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                FilledButton(onPressed: () => formBloc.submit(), child: const Text("Authorize")),
              ]),
            );
          }
      ),
    );
  }
}

class AuthBiometricsConfirmScreen extends StatelessWidget {
  const AuthBiometricsConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
