// GENERATED CODE - DO NOT MODIFY BY HAND

part of "auth.dart";

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthSettingsAdapter extends TypeAdapter<AuthSettings> {
  @override
  final int typeId = 0;

  @override
  AuthSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthSettings(
      fields[0] as bool,
      fields[1] as AuthType,
      fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AuthSettings obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.enabled)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.pin);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthTypeAdapter extends TypeAdapter<AuthType> {
  @override
  final int typeId = 1;

  @override
  AuthType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AuthType.pin;
      case 1:
        return AuthType.biometrics;
      default:
        return AuthType.pin;
    }
  }

  @override
  void write(BinaryWriter writer, AuthType obj) {
    switch (obj) {
      case AuthType.pin:
        writer.writeByte(0);
        break;
      case AuthType.biometrics:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
