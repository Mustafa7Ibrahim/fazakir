// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'timings_model.freezed.dart';
part 'timings_model.g.dart';

@freezed
class Timings with _$Timings {
  factory Timings({
    required String Fajr,
    required String Sunrise,
    required String Dhuhr,
    required String Asr,
    required String Sunset,
    required String Maghrib,
    required String Isha,
    required String Imsak,
    required String Midnight,
  }) = _Timings;

  factory Timings.fromJson(Map<String, dynamic> json) => _$TimingsFromJson(json);
}
