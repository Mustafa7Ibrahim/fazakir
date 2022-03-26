import 'package:fazakir/models/data_model/data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_responce.freezed.dart';
part 'prayer_responce.g.dart';

@freezed
class PrayerResponce with _$PrayerResponce {
  factory PrayerResponce({
    required int code,
    required String status,
    required DataModel data,
  }) = _PrayerResponce;

  factory PrayerResponce.fromJson(Map<String, dynamic> json) =>
      _$PrayerResponceFromJson(json);
}
