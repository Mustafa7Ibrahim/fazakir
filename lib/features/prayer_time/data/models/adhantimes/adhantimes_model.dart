import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'adhantimes_model.freezed.dart';
part 'adhantimes_model.g.dart';

@freezed
class AdhanTimesModel with _$AdhanTimesModel {
  factory AdhanTimesModel({
    required DateTime fajr,
    required DateTime sunrise,
    required DateTime dhuhr,
    required DateTime asr,
    required DateTime maghrib,
    required DateTime isha,
  }) = _AdhanTimesModel;

  factory AdhanTimesModel.fromJson(Map<String, dynamic> json) =>
      _$AdhanTimesModelFromJson(json);
}

String dateFormat(DateTime time) {
  return DateFormat.jm("ar_EG").format(time);
}
