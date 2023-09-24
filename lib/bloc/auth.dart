import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/auth.dart';
import 'package:todo/repositories/auth.dart';

part 'auth.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool biometricsAvailable,
    required bool enabled,
  }) = _AuthState;
}

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _repository;

  AuthCubit(this._repository, bool biometricsAvailable)
      : super(AuthState(
          biometricsAvailable: biometricsAvailable,
          enabled: _repository.enabled,
        ));

  AuthType? get authType => _repository.settings?.type;

  void setupPin(String pin) {
    _repository.setupPin(pin);
  }

  Future<bool> setupBiometrics() {
    return _repository.setupBiometrics();
  }

  Future<bool> authenticateWithBiometrics() {
    return _repository.authenticateWithBiometrics();
  }

  bool authenticateWithPin(String pin) {
    return _repository.checkPin(pin);
  }

  void reset() {
    _repository.resetAuth();
  }
}

class PinSetupFormBloc extends FormBloc<String, String> {
  final pin = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );
  final confirmPin = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );

  final AuthCubit _authCubit;

  PinSetupFormBloc(this._authCubit) {
    addFieldBlocs(
      fieldBlocs: [pin, confirmPin],
    );

    confirmPin
      ..addValidators([
        _confirmPin(
          pin,
        )
      ])
      ..subscribeToFieldBlocs([
        pin,
      ]);
  }

  Validator<String> _confirmPin(
    TextFieldBloc pinTextFieldBloc,
  ) {
    return (String confirmPassword) {
      if (confirmPassword == pinTextFieldBloc.value) {
        return null;
      }
      return 'Pin should be equal';
    };
  }

  @override
  FutureOr<void> onSubmitting() {
    try {
      _authCubit.setupPin(pin.value);

      emitSuccess(canSubmitAgain: true);
    } catch (e) {
      print(e);
      emitFailure();
    }
  }
}

class PinConfirmFormBloc extends FormBloc<String, String> {
  final pin = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );

  final AuthCubit _authCubit;

  PinConfirmFormBloc(this._authCubit): super(autoValidate: true) {
    pin.addValidators([_pinValidator]);

    addFieldBlocs(
      fieldBlocs: [pin],
    );
  }

  String? _pinValidator(String value) {
    if (!_authCubit.authenticateWithPin(value)) {
      return "Incorrect pin";
    }
    return null;
  }

  @override
  FutureOr<void> onSubmitting() {
    try {
      final success = _authCubit.authenticateWithPin(pin.value);
      if (success) {
        emitSuccess(canSubmitAgain: true);
      } else {
        emitFailure();
      }
    } catch (e) {
      emitFailure();
    }
  }
}
