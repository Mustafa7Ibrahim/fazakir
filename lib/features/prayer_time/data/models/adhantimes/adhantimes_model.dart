import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'adhantimes_model.freezed.dart';
part 'adhantimes_model.g.dart';

@freezed
class AdhanTimes with _$AdhanTimes {
  factory AdhanTimes({
    required String fajr,
    required String sunrise,
    required String dhuhr,
    required String asr,
    required String maghrib,
    required String isha,
  }) = _AdhanTimes;

  factory AdhanTimes.fromJson(Map<String, dynamic> json) =>
      _$AdhanTimesFromJson(json);
}
