import 'package:hive/hive.dart';

part 'prayer_settings_model.g.dart';

@HiveType(typeId: 2)
class PrayerSettingsModel extends HiveObject {
  @HiveField(0)
  String? city;

  @HiveField(1)
  String? country;

  @HiveField(2)
  double? latitude;

  @HiveField(3)
  double? longitude;

  @HiveField(4, defaultValue: 0)
  int? method;

  @HiveField(5, defaultValue: "general")
  String? shafaq;

  @HiveField(6, defaultValue: 0)
  int? school;

  @HiveField(7)
  int? midnightMode;

  @HiveField(8)
  String? latitudeAdjustmentMethod;

  PrayerSettingsModel({
    this.city,
    this.country,
    this.latitude,
    this.longitude,
    this.method,
    this.shafaq,
    this.school,
    this.midnightMode,
    this.latitudeAdjustmentMethod,
  });
}
