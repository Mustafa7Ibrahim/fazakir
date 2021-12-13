import 'dart:convert';

import 'package:fazakir/models/location_model/location_model.dart';
import 'package:fazakir/models/params_model/params_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'method_model.freezed.dart';
part 'method_model.g.dart';

@freezed
class MethodModel with _$MethodModel {
  factory MethodModel({
    required int id,
    required String name,
    required ParamsModel params,
    required LocationModel location,
  }) = _MethodModel;

  factory MethodModel.fromJson(Map<String, dynamic> json) => _$MethodModelFromJson(json);
}

List<MethodModel> methodsFromJson(String str) {
  return List<MethodModel>.from(json.decode(str).map((x) => MethodModel.fromJson(x)));
}
