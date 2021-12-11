import 'package:freezed_annotation/freezed_annotation.dart';

part 'month_model.freezed.dart';
part 'month_model.g.dart';

@freezed
class MonthModel with _$MonthModel {
  factory MonthModel({
    required int? number,
    required String? en,
    required String? ar,
  }) = _MonthModel;
  factory MonthModel.fromJson(Map<String, dynamic> json) => _$MonthModelFromJson(json);
}
