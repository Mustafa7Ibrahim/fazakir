import 'package:freezed_annotation/freezed_annotation.dart';

import '../gregorian_model/gregorian_model.dart';
import '../hijri_model/hijri_model.dart';

part 'date_model.freezed.dart';
part 'date_model.g.dart';

@freezed
class DateModel with _$DateModel {
  factory DateModel({
    required String readable,
    required String timestamp,
    required HijriModel hijri,
    required GregorianModel gregorian,
  }) = _DateModel;

  factory DateModel.fromJson(Map<String, dynamic> json) =>
      _$DateModelFromJson(json);
}
