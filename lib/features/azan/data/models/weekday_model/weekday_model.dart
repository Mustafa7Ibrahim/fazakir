import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekday_model.freezed.dart';
part 'weekday_model.g.dart';

@freezed
class WeekdayModel with _$WeekdayModel {
  factory WeekdayModel({
    String? en,
    String? ar,
  }) = _WeekdayModel;
  factory WeekdayModel.fromJson(Map<String, dynamic> json) => _$WeekdayModelFromJson(json);
}
