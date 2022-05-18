import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'adhantimes_model.freezed.dart';
part 'adhantimes_model.g.dart';

@freezed
class AdhanTimesModel with _$AdhanTimesModel {
  factory AdhanTimesModel({
    required String fajr,
    required String sunrise,
    required String dhuhr,
    required String asr,
    required String maghrib,
    required String isha,
  }) = _AdhanTimesModel;

  factory AdhanTimesModel.fromJson(Map<String, dynamic> json) =>
      _$AdhanTimesModelFromJson(json);
}
