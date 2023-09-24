import 'package:hive/hive.dart';

part 'auth.g.dart';

@HiveType(typeId: 1)
enum AuthType {
  @HiveField(0)
  pin,
  @HiveField(1)
  biometrics
}

@HiveType(typeId: 0)
class AuthSettings extends HiveObject {
  @HiveField(0)
  final bool enabled;

  @HiveField(1)
  final AuthType type;

  @HiveField(2)
  final String? pin;

  AuthSettings(this.enabled, this.type, this.pin);
}