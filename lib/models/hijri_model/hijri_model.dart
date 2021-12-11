import 'package:fazakir/models/designation_model/designation_model.dart';
import 'package:fazakir/models/month_model/month_model.dart';
import 'package:fazakir/models/weekday_model/weekday_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hijri_model.freezed.dart';
part 'hijri_model.g.dart';

@freezed
class HijriModel with _$HijriModel {
  factory HijriModel({
    required String date,
    required String format,
    required String day,
    required WeekdayModel weekday,
    required MonthModel month,
    required String year,
    required DesignationModel designatio,
    required List<dynamic> holidays,
  }) = _HijriModel;
  factory HijriModel.fromJson(Map<String, dynamic> json) => _$HijriModelFromJson(json);
}
