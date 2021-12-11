import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'timings_model.freezed.dart';
part 'timings_model.g.dart';

@freezed
class Timings with _$Timings {
  factory Timings({
    required String fajr,
    required String sunrise,
    required String dhuhr,
    required String asr,
    required String sunset,
    required String maghrib,
    required String isha,
    required String imsak,
    required String midnigh,
  }) = _Timings;

  factory Timings.fromJson(Map<String, dynamic> json) => _$TimingsFromJson(json);
}
