import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:local_auth/local_auth.dart';

import '../models/auth.dart';

class AuthRepository {
  final auth = LocalAuthentication();
  final box = Hive.box<AuthSettings>('auth');

  AuthSettings? get settings => box.getAt(0);

  bool get enabled => settings?.enabled ?? false;

  Future<void> initStore() async {
    if (box.isEmpty) {
      await box.add(AuthSettings(
        false,
        AuthType.pin,
        null,
      ));
    }
  }

  Future<bool> isBiometricsAvailable() async {
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await auth.isDeviceSupported();
    return canAuthenticate;
  }

  Future<bool> authenticateWithBiometrics() async {
    try {
      return await auth.authenticate(
          localizedReason: 'Please authenticate to show account balance');
    } on PlatformException {
      return false;
    }
  }

  String _hashPin(String pin) {
    var bytes = utf8.encode(pin);
    return sha256.convert(bytes).toString();
  }

  void setupPin(String pin) {
    box.putAt(0, AuthSettings(true, AuthType.pin, _hashPin(pin)));
  }

  void resetAuth() {
    box.putAt(0, AuthSettings(false, AuthType.pin, null));
  }

  Future<bool> setupBiometrics() async {
    if (settings?.type != AuthType.biometrics) {
      return false;
    }

    if (!await authenticateWithBiometrics()) {
      return false;
    }
    box.putAt(0, AuthSettings(true, AuthType.biometrics, null));
    return true;
  }

  bool checkPin(String pin) {
    if (settings?.type != AuthType.pin) {
      return false;
    }

    return _hashPin(pin) == settings?.pin;
  }
}
