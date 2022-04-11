import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/designation_model/designation_model.dart';
import '../month_model/month_model.dart';
import '../weekday_model/weekday_model.dart';

part 'gregorian_model.freezed.dart';
part 'gregorian_model.g.dart';

@freezed
class GregorianModel with _$GregorianModel {
  factory GregorianModel({
    required String date,
    required String format,
    required String day,
    required WeekdayModel weekday,
    required MonthModel month,
    required String year,
    required DesignationModel designation,
  }) = _GregorianModel;

  factory GregorianModel.fromJson(Map<String, dynamic> json) =>
      _$GregorianModelFromJson(json);
}
