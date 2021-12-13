// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'params_model.freezed.dart';
part 'params_model.g.dart';

@freezed
class ParamsModel with _$ParamsModel {
  factory ParamsModel({
    required double Fajr,
    required double Isha,
  }) = _ParamsModel;

  factory ParamsModel.fromJson(Map<String, dynamic> json) => _$ParamsModelFromJson(json);
}
