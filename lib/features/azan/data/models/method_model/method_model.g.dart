// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MethodModel _$$_MethodModelFromJson(Map<String, dynamic> json) =>
    _$_MethodModel(
      id: json['id'] as int,
      name: json['name'] as String,
      params: ParamsModel.fromJson(json['params'] as Map<String, dynamic>),
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MethodModelToJson(_$_MethodModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'params': instance.params,
      'location': instance.location,
    };
