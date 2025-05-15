// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age_profile_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AgeProfileModelAdapter extends TypeAdapter<AgeProfileModel> {
  @override
  final int typeId = 1;

  @override
  AgeProfileModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AgeProfileModel(
      name: fields[0] as String,
      birthDate: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, AgeProfileModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.birthDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AgeProfileModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
