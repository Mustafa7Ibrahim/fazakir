import 'package:freezed_annotation/freezed_annotation.dart';

part 'params_model.freezed.dart';
part 'params_model.g.dart';

@freezed
class ParamsModel with _$ParamsModel {
  factory ParamsModel({
    required double fajr,
    required double isha,
  }) = _ParamsModel;

  factory ParamsModel.fromJson(Map<String, dynamic> json) => _$ParamsModelFromJson(json);
}
