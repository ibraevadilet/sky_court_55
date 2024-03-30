// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sky_local_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SkyLocalModelAdapter extends TypeAdapter<SkyLocalModel> {
  @override
  final int typeId = 4;

  @override
  SkyLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SkyLocalModel(
      strtsky: fields[2] as bool,
      logsky: fields[1] as String,
      regsky: fields[0] as String,
      cabsky: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SkyLocalModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.regsky)
      ..writeByte(1)
      ..write(obj.logsky)
      ..writeByte(2)
      ..write(obj.strtsky)
      ..writeByte(3)
      ..write(obj.cabsky);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SkyLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
