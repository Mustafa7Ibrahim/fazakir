// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateModel _$$_DateModelFromJson(Map<String, dynamic> json) => _$_DateModel(
      readable: json['readable'] as String,
      timestamp: json['timestamp'] as String,
      hijri: HijriModel.fromJson(json['hijri'] as Map<String, dynamic>),
      gregorian:
          GregorianModel.fromJson(json['gregorian'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DateModelToJson(_$_DateModel instance) =>
    <String, dynamic>{
      'readable': instance.readable,
      'timestamp': instance.timestamp,
      'hijri': instance.hijri,
      'gregorian': instance.gregorian,
    };
