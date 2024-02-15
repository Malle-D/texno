// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_holder.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemHolderAdapter extends TypeAdapter<ItemHolder> {
  @override
  final int typeId = 0;

  @override
  ItemHolder read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemHolder(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      fields[5] as String,
      fields[6] as bool,
      fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ItemHolder obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.value)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.count)
      ..writeByte(6)
      ..write(obj.favourite)
      ..writeByte(7)
      ..write(obj.isSaved);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemHolderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
