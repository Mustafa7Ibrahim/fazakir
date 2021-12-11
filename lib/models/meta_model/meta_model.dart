import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fazakir/models/method_model/method_model.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@freezed
class MetaModel with _$MetaModel {
  factory MetaModel({
    required double latitude,
    required double longitude,
    required String timezone,
    required MethodModel method,
    required String latitudeAdjustmentMethod,
    required String midnightMode,
    required String school,
    required Map<String, int> offset,
  }) = _MetaModel;
  factory MetaModel.fromJson(Map<String, dynamic> json) => _$MetaModelFromJson(json);
}
