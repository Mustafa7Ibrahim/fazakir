// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_settings_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PrayerSettingsModelAdapter extends TypeAdapter<PrayerSettingsModel> {
  @override
  final int typeId = 2;

  @override
  PrayerSettingsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PrayerSettingsModel()
      ..city = fields[0] as String?
      ..country = fields[1] as String?
      ..latitude = fields[2] as double?
      ..longitude = fields[3] as double?
      ..method = fields[4] == null ? 0 : fields[4] as int
      ..shafaq = fields[5] == null ? 'general' : fields[5] as String
      ..school = fields[6] == null ? 0 : fields[6] as int
      ..midnightMode = fields[7] as int?
      ..latitudeAdjustmentMethod = fields[8] as String?;
  }

  @override
  void write(BinaryWriter writer, PrayerSettingsModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.city)
      ..writeByte(1)
      ..write(obj.country)
      ..writeByte(2)
      ..write(obj.latitude)
      ..writeByte(3)
      ..write(obj.longitude)
      ..writeByte(4)
      ..write(obj.method)
      ..writeByte(5)
      ..write(obj.shafaq)
      ..writeByte(6)
      ..write(obj.school)
      ..writeByte(7)
      ..write(obj.midnightMode)
      ..writeByte(8)
      ..write(obj.latitudeAdjustmentMethod);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrayerSettingsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
