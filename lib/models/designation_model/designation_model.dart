import 'package:freezed_annotation/freezed_annotation.dart';

part 'designation_model.freezed.dart';
part 'designation_model.g.dart';

@freezed
class DesignationModel with _$DesignationModel {
  factory DesignationModel({
    required String abbreviated,
    required String expanded,
  }) = _DesignationModel;
  factory DesignationModel.fromJson(Map<String, dynamic> json) => _$DesignationModelFromJson(json);
}
